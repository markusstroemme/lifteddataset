define void @anon1() local_unnamed_addr {
dec_label_pc_6432c:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @anon0(ptr null)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %2 = bitcast ptr %stack_var_-27 to ptr
  %3 = call ptr @strcpy(ptr %1, ptr nonnull %2)
  call void @printLine(ptr %1)
  %4 = bitcast ptr %1 to ptr
  call void @free(ptr %4)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_643b7, label %dec_label_pc_643b2

dec_label_pc_643b2:                               ; preds = %dec_label_pc_6432c
  call void @__stack_chk_fail()
  br label %dec_label_pc_643b7

dec_label_pc_643b7:                               ; preds = %dec_label_pc_643b2, %dec_label_pc_6432c
  ret void
}

define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_64403:
  %0 = call ptr @malloc(i32 11)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_64432, label %dec_label_pc_64428

dec_label_pc_64428:                               ; preds = %dec_label_pc_64403
  call void @exit(i32 -1)
  unreachable

dec_label_pc_64432:                               ; preds = %dec_label_pc_64403
  %3 = bitcast ptr %0 to ptr
  ret ptr %3
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

