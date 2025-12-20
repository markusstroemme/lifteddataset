@global_var_b7330 = external constant [36 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_42339:
  %indvars.iv.reg2mem = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 40)
  %2 = ptrtoint ptr %1 to i64
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br i1 %4, label %dec_label_pc_423b5, label %dec_label_pc_423a2

dec_label_pc_423a2:                               ; preds = %dec_label_pc_42339
  call void @exit(i32 -1)
  unreachable

dec_label_pc_423b5:                               ; preds = %dec_label_pc_42339, %dec_label_pc_423b5
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %5 = mul i64 %indvars.iv.reload, 4
  %6 = add i64 %5, %2
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_42431, label %dec_label_pc_423b5

dec_label_pc_42431:                               ; preds = %dec_label_pc_423b5
  call void @printLine(ptr @global_var_b7330)
  call void @free(ptr %1)
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_42461, label %dec_label_pc_4245c

dec_label_pc_4245c:                               ; preds = %dec_label_pc_42431
  call void @__stack_chk_fail()
  br label %dec_label_pc_42461

dec_label_pc_42461:                               ; preds = %dec_label_pc_4245c, %dec_label_pc_42431
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_9fe8c:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9feaf, label %dec_label_pc_9fea3

dec_label_pc_9fea3:                               ; preds = %dec_label_pc_9fe8c
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_9feaf

dec_label_pc_9feaf:                               ; preds = %dec_label_pc_9fea3, %dec_label_pc_9fe8c
  ret void
}

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

