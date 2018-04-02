<message>
<div>
	<h4 class="line">{ msg.author }: { msg.message }</h4>
	<h5>at { msg.timeStamp }</h5>
	<span onclick={ upvote }><i class="far fa-thumbs-up"></i>{ msg.upvoteNum }</span>
	<span onclick={ downvote }><i class="far fa-thumbs-down"></i>{ msg.downvoteNum }</span>
	<span onclick={ delete } show={ msg.author == opts.currentuser }><i class="far fa-trash-alt"></i>
</div>

	<script>
	  console.log('message tag', this);
		var that = this;

		var getID = this.msg.id;
		// console.log(getID);

		upvote(e) {

			this.msg.upvoteNum++;//I cannot write "var upvote = this.msg.upvoteNum++;" why?
			// console.log(upvote);
			//console.log(this.msg.upvoteNum++);
			usersRef.child(getID + '/upvoteNum').set(this.msg.upvoteNum++);
		};

//two ways to achieve this:
// 1st. usersRef.child(getID + '/upvoteNum').set(this.msg.upvoteNum++);
//2nd. var upvote = this.msg.upvoteNum++ + 1;
//usersRef.child(getID + '/upvoteNum').set(upvote);


		downvote(e) {
		  this.msg.downvoteNum++;
			usersRef.child(getID+ '/downvoteNum').set(this.msg.downvoteNum++);
		};


		delete(e) {
		usersRef.child(getID).set(null);
		};






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
