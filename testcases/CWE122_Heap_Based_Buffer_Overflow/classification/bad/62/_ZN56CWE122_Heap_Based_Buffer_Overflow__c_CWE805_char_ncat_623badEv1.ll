@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_3aa67:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %stack_var_-128 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-128, align 8
  %1 = call i64 @anon1(ptr nonnull %stack_var_-128)
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = load ptr, ptr %stack_var_-128, align 8
  %4 = bitcast ptr %stack_var_-120 to ptr
  %5 = call ptr @strncat(ptr %3, ptr nonnull %4, i32 100)
  %6 = load ptr, ptr %stack_var_-128, align 8
  call void @printLine(ptr %6)
  %7 = load ptr, ptr %stack_var_-128, align 8
  %8 = bitcast ptr %7 to ptr
  call void @free(ptr %8)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_3aaf5, label %dec_label_pc_3aaf0

dec_label_pc_3aaf0:                               ; preds = %dec_label_pc_3aa67
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3aaf5

dec_label_pc_3aaf5:                               ; preds = %dec_label_pc_3aaf0, %dec_label_pc_3aa67
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_3ab97:
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

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @strncat(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

