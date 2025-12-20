@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_35d12:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = inttoptr i64 %1 to ptr
  %3 = call ptr @memset(ptr %2, i32 65, i32 99)
  %4 = add i64 %1, 99
  %5 = inttoptr i64 %4 to ptr
  store i8 0, ptr %5, align 1
  %6 = bitcast ptr %stack_var_-56 to ptr
  %7 = call i64 @anon1(ptr nonnull %6)
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %9, label %dec_label_pc_35d85, label %dec_label_pc_35d80

dec_label_pc_35d80:                               ; preds = %dec_label_pc_35d12
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_35d85

dec_label_pc_35d85:                               ; preds = %dec_label_pc_35d80, %dec_label_pc_35d12
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_35e0c:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %arg1 to i64
  %stack_var_-72 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, 16
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  store i64 0, ptr %stack_var_-72, align 8
  %5 = bitcast ptr %stack_var_-72 to ptr
  %6 = inttoptr i64 %4 to ptr
  %7 = call ptr @strcpy(ptr nonnull %5, ptr %6)
  call void @printLine(ptr %6)
  %8 = icmp eq i64 %4, 0
  br i1 %8, label %dec_label_pc_35e9f, label %dec_label_pc_35e93

dec_label_pc_35e93:                               ; preds = %dec_label_pc_35e0c
  %9 = inttoptr i64 %4 to ptr
  %10 = and i64 %4, 4294967295
  %11 = inttoptr i64 %10 to ptr
  call void @_ZdaPv(ptr %9, ptr %11)
  br label %dec_label_pc_35e9f

dec_label_pc_35e9f:                               ; preds = %dec_label_pc_35e93, %dec_label_pc_35e0c
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %1, %12
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_35eb4, label %dec_label_pc_35eaf

dec_label_pc_35eaf:                               ; preds = %dec_label_pc_35e9f
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_35eb4

dec_label_pc_35eb4:                               ; preds = %dec_label_pc_35eaf, %dec_label_pc_35e9f
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_37b38:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_37b5b, label %dec_label_pc_37b4f

dec_label_pc_37b4f:                               ; preds = %dec_label_pc_37b38
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_37b5b

dec_label_pc_37b5b:                               ; preds = %dec_label_pc_37b4f, %dec_label_pc_37b38
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

