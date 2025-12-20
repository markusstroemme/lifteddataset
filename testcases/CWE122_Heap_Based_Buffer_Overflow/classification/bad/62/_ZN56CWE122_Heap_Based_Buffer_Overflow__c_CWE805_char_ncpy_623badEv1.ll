@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_3c5fb:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %stack_var_-128 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-128, align 8
  %1 = call i64 @anon1(ptr nonnull %stack_var_-128)
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = load ptr, ptr %stack_var_-128, align 8
  %4 = bitcast ptr %stack_var_-120 to ptr
  %5 = call ptr @strncpy(ptr %3, ptr nonnull %4, i32 99)
  %6 = load ptr, ptr %stack_var_-128, align 8
  %7 = ptrtoint ptr %6 to i64
  %8 = add i64 %7, 99
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  %10 = load ptr, ptr %stack_var_-128, align 8
  call void @printLine(ptr %10)
  %11 = load ptr, ptr %stack_var_-128, align 8
  %12 = bitcast ptr %11 to ptr
  call void @free(ptr %12)
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %14, label %dec_label_pc_3c694, label %dec_label_pc_3c68f

dec_label_pc_3c68f:                               ; preds = %dec_label_pc_3c5fb
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3c694

dec_label_pc_3c694:                               ; preds = %dec_label_pc_3c68f, %dec_label_pc_3c5fb
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_3c741:
  %0 = call ptr @malloc(i32 50)
  %1 = ptrtoint ptr %0 to i64
  %2 = bitcast ptr %arg1 to ptr
  store i64 %1, ptr %2, align 8
  store i8 0, ptr inttoptr (i64 50 to ptr), align 2
  ret i64 50
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

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

