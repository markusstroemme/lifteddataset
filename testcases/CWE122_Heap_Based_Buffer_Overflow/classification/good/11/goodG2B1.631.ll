@global_var_4bde5 = external constant [21 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_83cd:
  %stack_var_-40.0.reg2mem = alloca ptr, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_840f, label %dec_label_pc_83fe

dec_label_pc_83fe:                                ; preds = %dec_label_pc_83cd
  call void @printLine(ptr @global_var_4bde5)
  store ptr null, ptr %stack_var_-40.0.reg2mem, align 8
  br label %dec_label_pc_842e

dec_label_pc_840f:                                ; preds = %dec_label_pc_83cd
  %3 = call ptr @malloc(i32 11)
  %4 = bitcast ptr %3 to ptr
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  store ptr %4, ptr %stack_var_-40.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_842e, label %dec_label_pc_8424

dec_label_pc_8424:                                ; preds = %dec_label_pc_840f
  call void @exit(i32 -1)
  unreachable

dec_label_pc_842e:                                ; preds = %dec_label_pc_840f, %dec_label_pc_83fe
  %stack_var_-40.0.reload = load ptr, ptr %stack_var_-40.0.reg2mem, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %7 = bitcast ptr %stack_var_-27 to ptr
  %8 = call i32 @strlen(ptr nonnull %7)
  %9 = add i32 %8, 1
  %10 = bitcast ptr %stack_var_-40.0.reload to ptr
  %11 = call ptr @memmove(ptr %10, ptr nonnull %stack_var_-27, i32 %9)
  call void @printLine(ptr %stack_var_-40.0.reload)
  call void @free(ptr %10)
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_8496, label %dec_label_pc_8491

dec_label_pc_8491:                                ; preds = %dec_label_pc_842e
  call void @__stack_chk_fail()
  br label %dec_label_pc_8496

dec_label_pc_8496:                                ; preds = %dec_label_pc_8491, %dec_label_pc_842e
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

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_3e3d2:
  ret i32 0
}

declare i32 @strlen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

