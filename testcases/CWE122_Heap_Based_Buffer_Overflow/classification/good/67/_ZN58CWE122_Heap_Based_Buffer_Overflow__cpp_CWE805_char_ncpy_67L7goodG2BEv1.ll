@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2d960:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = inttoptr i64 %1 to ptr
  store i8 0, ptr %2, align 1
  %3 = call i64 @anon1(i64 %1)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_2d9c1, label %dec_label_pc_2d9bc

dec_label_pc_2d9bc:                               ; preds = %dec_label_pc_2d960
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2d9c1

dec_label_pc_2d9c1:                               ; preds = %dec_label_pc_2d9bc, %dec_label_pc_2d960
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(i64 %arg1) local_unnamed_addr {
dec_label_pc_2da76:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %2 = inttoptr i64 %arg1 to ptr
  %3 = bitcast ptr %stack_var_-120 to ptr
  %4 = call ptr @strncpy(ptr %2, ptr nonnull %3, i32 99)
  %5 = add i64 %arg1, 99
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  call void @printLine(ptr %2)
  %7 = icmp eq i64 %arg1, 0
  br i1 %7, label %dec_label_pc_2db02, label %dec_label_pc_2daf6

dec_label_pc_2daf6:                               ; preds = %dec_label_pc_2da76
  %8 = ptrtoint ptr %stack_var_-120 to i64
  %9 = inttoptr i64 %arg1 to ptr
  %10 = and i64 %8, 4294967288
  %11 = inttoptr i64 %10 to ptr
  call void @_ZdaPv(ptr %9, ptr %11)
  br label %dec_label_pc_2db02

dec_label_pc_2db02:                               ; preds = %dec_label_pc_2daf6, %dec_label_pc_2da76
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_2db17, label %dec_label_pc_2db12

dec_label_pc_2db12:                               ; preds = %dec_label_pc_2db02
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2db17

dec_label_pc_2db17:                               ; preds = %dec_label_pc_2db12, %dec_label_pc_2db02
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

