<message>
<div>
	<h4>{ msg.author }: { msg.message } - at { msg.timeStamp }</h4>
	<span onclick={ upvote }><i class="far fa-thumbs-up"></i>{ msg.upvoteNum }</span>
	<span onclick={ downvote }><i class="far fa-thumbs-down"></i>{ msg.downvoteNum }</span>
	<i class="far fa-trash-alt" onclick={ delete }></i>
</div>

	<script>
		var that = this;
		console.log('message tag');

		this.upvote = function(event) {

			//alert("touch");
			that.parent.chatLog.upvoteNum++;
			var newUser = that.parent.myUser;
			var myKey = usersRef.push().key;
		  usersRef.child(myKey).set(newUser);
		}




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
			border: 1px solid black;
			background-color: lightgray;
		}
	</style>
</message>
