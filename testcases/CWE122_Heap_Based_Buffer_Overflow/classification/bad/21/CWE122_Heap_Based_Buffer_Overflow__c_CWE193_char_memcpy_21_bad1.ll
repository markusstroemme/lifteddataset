@badStatic = external local_unnamed_addr global i32

define ptr @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_6ce49:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @badStatic, align 4
  %1 = icmp eq i32 %0, 0
  store ptr %data, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_6ce82, label %dec_label_pc_6ce63

dec_label_pc_6ce63:                               ; preds = %dec_label_pc_6ce49
  %2 = call ptr @malloc(i32 10)
  %3 = bitcast ptr %2 to ptr
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store ptr %3, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_6ce82, label %dec_label_pc_6ce78

dec_label_pc_6ce78:                               ; preds = %dec_label_pc_6ce63
  call void @exit(i32 -1)
  unreachable

dec_label_pc_6ce82:                               ; preds = %dec_label_pc_6ce63, %dec_label_pc_6ce49
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  ret ptr %stack_var_-16.0.reload
}

define void @anon0() local_unnamed_addr {
dec_label_pc_6ce88:
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i32 1, ptr @badStatic, align 4
  %1 = call ptr @anon1(ptr null)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %2 = bitcast ptr %stack_var_-27 to ptr
  %3 = call i32 @strlen(ptr nonnull %2)
  %4 = add i32 %3, 1
  %5 = bitcast ptr %1 to ptr
  %6 = call ptr @memcpy(ptr %5, ptr nonnull %stack_var_-27, i32 %4)
  call void @printLine(ptr %1)
  call void @free(ptr %5)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  br i1 %8, label %dec_label_pc_6cf2d, label %dec_label_pc_6cf28

dec_label_pc_6cf28:                               ; preds = %dec_label_pc_6ce88
  call void @__stack_chk_fail()
  br label %dec_label_pc_6cf2d

dec_label_pc_6cf2d:                               ; preds = %dec_label_pc_6cf28, %dec_label_pc_6ce88
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

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

