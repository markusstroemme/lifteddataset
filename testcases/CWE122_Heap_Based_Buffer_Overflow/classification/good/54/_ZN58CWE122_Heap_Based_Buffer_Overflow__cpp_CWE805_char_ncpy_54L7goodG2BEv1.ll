@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2cb57:
  %0 = call i64 @_Znam(i64 100)
  %1 = inttoptr i64 %0 to ptr
  store i8 0, ptr %1, align 1
  %2 = call i64 @anon1(ptr %1)
  ret i64 %2
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_2cbbe:
  %0 = call i64 @anon2(ptr %arg1)
  ret i64 %0
}

define i64 @anon2(ptr %arg1) local_unnamed_addr {
dec_label_pc_2cbfc:
  %0 = call i64 @anon3(ptr %arg1)
  ret i64 %0
}

define i64 @anon3(ptr %arg1) local_unnamed_addr {
dec_label_pc_2cc3a:
  %0 = call i64 @anon4(ptr %arg1)
  ret i64 %0
}

define i64 @anon4(ptr %arg1) local_unnamed_addr {
dec_label_pc_2cceb:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = ptrtoint ptr %arg1 to i64
  %stack_var_-120 = alloca i64, align 8
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = bitcast ptr %stack_var_-120 to ptr
  %4 = call ptr @strncpy(ptr %arg1, ptr nonnull %3, i32 99)
  %5 = add i64 %0, 99
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  call void @printLine(ptr %arg1)
  %7 = icmp eq ptr %arg1, null
  br i1 %7, label %dec_label_pc_2cd66, label %dec_label_pc_2cd5a

dec_label_pc_2cd5a:                               ; preds = %dec_label_pc_2cceb
  %8 = ptrtoint ptr %stack_var_-120 to i64
  %9 = bitcast ptr %arg1 to ptr
  %10 = and i64 %8, 4294967288
  %11 = inttoptr i64 %10 to ptr
  call void @_ZdaPv(ptr %9, ptr %11)
  br label %dec_label_pc_2cd66

dec_label_pc_2cd66:                               ; preds = %dec_label_pc_2cd5a, %dec_label_pc_2cceb
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %1, %12
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_2cd7b, label %dec_label_pc_2cd76

dec_label_pc_2cd76:                               ; preds = %dec_label_pc_2cd66
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2cd7b

dec_label_pc_2cd7b:                               ; preds = %dec_label_pc_2cd76, %dec_label_pc_2cd66
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_42e40:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_42e63, label %dec_label_pc_42e57

dec_label_pc_42e57:                               ; preds = %dec_label_pc_42e40
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_42e63

dec_label_pc_42e63:                               ; preds = %dec_label_pc_42e57, %dec_label_pc_42e40
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

