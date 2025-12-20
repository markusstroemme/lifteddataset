define void @anon1() local_unnamed_addr {
dec_label_pc_6468a:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 11)
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %stack_var_-24, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_646ce, label %dec_label_pc_646c4

dec_label_pc_646c4:                               ; preds = %dec_label_pc_6468a
  call void @exit(i32 -1)
  unreachable

dec_label_pc_646ce:                               ; preds = %dec_label_pc_6468a
  %5 = bitcast ptr %stack_var_-24 to ptr
  call void @anon0(ptr nonnull %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_646ef, label %dec_label_pc_646ea

dec_label_pc_646ea:                               ; preds = %dec_label_pc_646ce
  call void @__stack_chk_fail()
  br label %dec_label_pc_646ef

dec_label_pc_646ef:                               ; preds = %dec_label_pc_646ea, %dec_label_pc_646ce
  ret void
}

define void @anon0(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_64792:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %1 = bitcast ptr %stack_var_-27 to ptr
  %2 = call ptr @strcpy(ptr %dataVoidPtr, ptr nonnull %1)
  call void @printLine(ptr %dataVoidPtr)
  %3 = bitcast ptr %dataVoidPtr to ptr
  call void @free(ptr %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_6481c, label %dec_label_pc_64817

dec_label_pc_64817:                               ; preds = %dec_label_pc_64792
  call void @__stack_chk_fail()
  br label %dec_label_pc_6481c

dec_label_pc_6481c:                               ; preds = %dec_label_pc_64817, %dec_label_pc_64792
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

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

