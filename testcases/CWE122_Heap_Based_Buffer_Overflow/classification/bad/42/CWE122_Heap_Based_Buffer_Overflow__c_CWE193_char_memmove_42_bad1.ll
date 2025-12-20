define ptr @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_9ed1:
  %0 = call ptr @malloc(i32 10)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_9f00, label %dec_label_pc_9ef6

dec_label_pc_9ef6:                                ; preds = %dec_label_pc_9ed1
  call void @exit(i32 -1)
  unreachable

dec_label_pc_9f00:                                ; preds = %dec_label_pc_9ed1
  %3 = bitcast ptr %0 to ptr
  ret ptr %3
}

define void @anon0() local_unnamed_addr {
dec_label_pc_9f06:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @anon1(ptr null)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %2 = bitcast ptr %stack_var_-27 to ptr
  %3 = call i32 @strlen(ptr nonnull %2)
  %4 = add i32 %3, 1
  %5 = bitcast ptr %1 to ptr
  %6 = call ptr @memmove(ptr %5, ptr nonnull %stack_var_-27, i32 %4)
  call void @printLine(ptr %1)
  call void @free(ptr %5)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  br i1 %8, label %dec_label_pc_9fa1, label %dec_label_pc_9f9c

dec_label_pc_9f9c:                                ; preds = %dec_label_pc_9f06
  call void @__stack_chk_fail()
  br label %dec_label_pc_9fa1

dec_label_pc_9fa1:                                ; preds = %dec_label_pc_9f9c, %dec_label_pc_9f06
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3deb3:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3ded6, label %dec_label_pc_3deca

dec_label_pc_3deca:                               ; preds = %dec_label_pc_3deb3
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3ded6

dec_label_pc_3ded6:                               ; preds = %dec_label_pc_3deca, %dec_label_pc_3deb3
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

