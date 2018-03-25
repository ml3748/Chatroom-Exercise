<app>

	<h1>Welcome to Secret Chat!</h1>

<div class="author name">

</div>


	<div class="chatLog" ref="chatLog">
		<!-- Messages go here: -->
		<message each={ msg in chatLog }></message>
	</div>

	<input type="text" placeholder="Enter your name here" ref="authorName">
	<input type="text" ref="messageInput" onkeypress={ saveUser } placeholder="Enter Message">
	<button type="button" onclick={ saveUser }>SEND</button>

<!-- two elements have the same event, but with different event listeners -->

	<script>
		var that = this;

		// Demonstration Data
		this.chatLog = [
			{ author: "No user",
				message: "LOADING DATA"
			}
		]; //fake data

//Here - fetch data from the database
//In here, I'll set chatLog to the db data

		usersRef.on('value', function(snapshot) {
			var data = snapshot.val();

			that.chatLog = [];//如果没有这行，所有东西都会redundant

			for (Key in data) {
				that.chatLog.push(data[Key]);
			}

			that.update();
		});


		saveUser(e) {

			if (e.type == "keypress" && e.key !== "Enter") {
					e.preventUpdate = true; // Prevents riot from auto update.
					return false; // Short-circuits function (function exits here, does not continue.)
					console.log('keypress');//only excute if commenting out "return false"
			}

			if (this.refs.authorName.value !== "") {
			var myUser = {
				author: this.refs.authorName.value,
				message: this.refs.messageInput.value,
				timeStamp: new Date().toLocaleTimeString()
			}

			var myKey = usersRef.push().key;

			usersRef.child(myKey).set(myUser);

			that.update();

			}

			this.clearInput(); //call clearInput function
		};
		// saveName(e) {
		// 	if (e.type == "keypress" && e.key !== "Enter") {
		// 		e.preventUpdate = true; // Prevents riot from auto update.
		// 		return false; // Short-circuits function (function exits here, does not continue.)
		// 		console.log('keypress');//only excute if commenting out "return false"
		// 	}
		//
		// 	if (this.refs.authorName.value !== "") {
		//
		// 		var authorNme = {
		// 			name: this.refs.authorName.value
		// 		}
		//
		// 		usersRef.push(authorNme);
		//
		// 	}
		//
		// };
		//
		// sendMsg(e) {
		// 	if (e.type == "keypress" && e.key !== "Enter") {
		// 		e.preventUpdate = true; // Prevents riot from auto update.
		// 		return false; // Short-circuits function (function exits here, does not continue.)
		// 		console.log('keypress');//only excute if commenting out "return false"
		// 	}
		// 	//Q2: but if we delete onkeypress eventlistner, it won't update neither
		// 	if (this.refs.messageInput.value !== "") {
		//
		// 		var msg = {
		// 			message: this.refs.messageInput.value
		// 		}
		//
		// 		usersRef.push().key.push(msg); //if you use "set", then it replaces everything in the database
		// 		// messagesRef.child('/a').set(msg); manually add child tag, not possible for twitter
		//
		// 	};
			//原来没有database的时候，通过这个codes来sendMsg
			//没问题
			// var msg = {
			// 	message: this.refs.messageInput.value
			// };
			// this.chatLog.push(msg);




		this.on('update', function() {
			console.log('update was called');
		});

		//Q3: why do not use that.update?

		clearInput(e) {
			this.refs.messageInput.value = "";
			this.refs.messageInput.focus();
		}
	</script>




	<style>
		:scope {
			display: block;
			font-family: Helvetica;
			font-size: 1em;
		}
		.chatLog {
			border: 1px solid grey;
			padding: 1em;
			margin-bottom: 1em;
		}
		[ref="messageInput"], button {
			font-size: 1em;
			padding: 0.5em;
		}
		[ref="messageInput"] {
			width: 50%;
		}
	</style>
</app>
