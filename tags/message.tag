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

		var getID = this.msg.id;
		console.log(getID);

		this.upvote = function(event) {

			//alert("touch");
		  var upvote = this.msg.upvoteNum++ + 1;
			console.log(upvote);
			usersRef.child(this.msg.id + '/upvoteNum').set(upvote);
		};

		this.downvote = function(event) {
			this.msg.downvoteNum++;
			var downvote = this.msg.downvoteNum++ + 1;
			console.log(downvote);
			usersRef.child(this.msg.id + '/downvoteNum').set(downvote);
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
