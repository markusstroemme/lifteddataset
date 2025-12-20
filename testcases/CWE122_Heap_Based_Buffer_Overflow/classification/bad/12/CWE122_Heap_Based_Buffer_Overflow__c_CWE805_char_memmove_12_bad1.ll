define void @anon0() local_unnamed_addr {
dec_label_pc_1f271:
  %stack_var_-128.0.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_1f2ca, label %dec_label_pc_1f2a2

dec_label_pc_1f2a2:                               ; preds = %dec_label_pc_1f271
  %3 = call ptr @malloc(i32 50)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_1f2c1, label %dec_label_pc_1f2b7

dec_label_pc_1f2b7:                               ; preds = %dec_label_pc_1f2a2
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1f2c1:                               ; preds = %dec_label_pc_1f2a2
  %6 = bitcast ptr %3 to ptr
  store i8 0, ptr %6, align 1
  store ptr %6, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_1f2f0

dec_label_pc_1f2ca:                               ; preds = %dec_label_pc_1f271
  %7 = call ptr @malloc(i32 100)
  %8 = icmp eq ptr %7, null
  %9 = icmp eq i1 %8, false
  br i1 %9, label %dec_label_pc_1f2e9, label %dec_label_pc_1f2df

dec_label_pc_1f2df:                               ; preds = %dec_label_pc_1f2ca
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1f2e9:                               ; preds = %dec_label_pc_1f2ca
  %10 = bitcast ptr %7 to ptr
  store i8 0, ptr %10, align 1
  store ptr %10, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_1f2f0

dec_label_pc_1f2f0:                               ; preds = %dec_label_pc_1f2e9, %dec_label_pc_1f2c1
  %stack_var_-128.0.reload = load ptr, ptr %stack_var_-128.0.reg2mem, align 8
  %11 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %12 = bitcast ptr %stack_var_-128.0.reload to ptr
  %13 = call ptr @memmove(ptr %12, ptr nonnull %stack_var_-120, i32 100)
  %14 = ptrtoint ptr %stack_var_-128.0.reload to i64
  %15 = add i64 %14, 99
  %16 = inttoptr i64 %15 to ptr
  store i8 0, ptr %16, align 1
  call void @printLine(ptr nonnull %stack_var_-128.0.reload)
  call void @free(ptr %12)
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %0, %17
  br i1 %18, label %dec_label_pc_1f35a, label %dec_label_pc_1f355

dec_label_pc_1f355:                               ; preds = %dec_label_pc_1f2f0
  call void @__stack_chk_fail()
  br label %dec_label_pc_1f35a

dec_label_pc_1f35a:                               ; preds = %dec_label_pc_1f355, %dec_label_pc_1f2f0
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_3e3e1:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @rand() local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

