<message>
<div>
	<h4 class="line">{ msg.author }: { msg.message }</h4>
	<h5>at { msg.timeStamp }</h5>
	<span onclick={ upvote }><i class="far fa-thumbs-up"></i>{ msg.upvoteNum }</span>
	<span onclick={ downvote }><i class="far fa-thumbs-down"></i>{ msg.downvoteNum }</span>
	<span onclick={ delete }><i class="far fa-trash-alt"></i>
</div>

	<script>
		var that = this;
		console.log('message tag');

		this.upvote = function(event) {

			//alert("touch");
			this.msg.upvoteNum++;
			// var newUser = that.parent.myUser;
			// var myKey = usersRef.push().key;
		  // usersRef.child(myKey).set(newUser);
		};

		this.downvote = function(event) {
			this.msg.downvoteNum++;
		};

		// this.deleteMsg = false;
		//
		// delete(event) {
		// 	this.deleteMsg = true;
		// 	var msgName = usersRef.push().key;
		// 	usersRef.child(msgName).remove();
		// 		}

				// this.on('update', function() {
				// 	if(!this.deleteMsg) {
				// 		this.refs.chatLog =
				// 	}
				// 	that.deleteMsg = false;
				// })
				//






	</script>

	<style>
		:scope {
			display: block;
		}
		:scope:not(:last-child) {
			margin-bottom: 1em;
		}
		span {
			padding: 0.5em;
		}

		.line {
			 margin-bottom: -1em;
		}
	</style>
</message>
