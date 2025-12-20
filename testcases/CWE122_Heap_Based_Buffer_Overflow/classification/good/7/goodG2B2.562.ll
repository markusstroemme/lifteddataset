@global_var_64014 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_7b1d:
  %stack_var_-40.0.reg2mem = alloca ptr, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_64014, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store ptr null, ptr %stack_var_-40.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_7b6a, label %dec_label_pc_7b4b

dec_label_pc_7b4b:                                ; preds = %dec_label_pc_7b1d
  %4 = call ptr @malloc(i32 11)
  %5 = bitcast ptr %4 to ptr
  %6 = icmp eq ptr %4, null
  %7 = icmp eq i1 %6, false
  store ptr %5, ptr %stack_var_-40.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_7b6a, label %dec_label_pc_7b60

dec_label_pc_7b60:                                ; preds = %dec_label_pc_7b4b
  call void @exit(i32 -1)
  unreachable

dec_label_pc_7b6a:                                ; preds = %dec_label_pc_7b4b, %dec_label_pc_7b1d
  %stack_var_-40.0.reload = load ptr, ptr %stack_var_-40.0.reg2mem, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %8 = bitcast ptr %stack_var_-27 to ptr
  %9 = call i32 @strlen(ptr nonnull %8)
  %10 = add i32 %9, 1
  %11 = bitcast ptr %stack_var_-40.0.reload to ptr
  %12 = call ptr @memmove(ptr %11, ptr nonnull %stack_var_-27, i32 %10)
  call void @printLine(ptr %stack_var_-40.0.reload)
  call void @free(ptr %11)
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_7bd2, label %dec_label_pc_7bcd

dec_label_pc_7bcd:                                ; preds = %dec_label_pc_7b6a
  call void @__stack_chk_fail()
  br label %dec_label_pc_7bd2

dec_label_pc_7bd2:                                ; preds = %dec_label_pc_7bcd, %dec_label_pc_7b6a
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

