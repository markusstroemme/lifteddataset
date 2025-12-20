@0 = external global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_32d8c:
  %0 = call ptr @malloc(i32 10)
  %1 = ptrtoint ptr %0 to i64
  %2 = bitcast ptr %arg1 to ptr
  store i64 %1, ptr %2, align 8
  ret i64 10
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_32dc9:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-27 = alloca i64, align 8
  %stack_var_-40 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-40, align 8
  %1 = call i64 @anon0(ptr nonnull %stack_var_-40)
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %2 = bitcast ptr %stack_var_-27 to ptr
  %3 = call i32 @strlen(ptr nonnull %2)
  %4 = add i32 %3, 1
  %5 = load ptr, ptr %stack_var_-40, align 8
  %6 = call ptr @strncpy(ptr %5, ptr nonnull %2, i32 %4)
  %7 = load ptr, ptr %stack_var_-40, align 8
  call void @printLine(ptr %7)
  %8 = load ptr, ptr %stack_var_-40, align 8
  %9 = bitcast ptr %8 to ptr
  call void @free(ptr %9)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %11, label %dec_label_pc_32e60, label %dec_label_pc_32e5b

dec_label_pc_32e5b:                               ; preds = %dec_label_pc_32dc9
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_32e60

dec_label_pc_32e60:                               ; preds = %dec_label_pc_32e5b, %dec_label_pc_32dc9
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

