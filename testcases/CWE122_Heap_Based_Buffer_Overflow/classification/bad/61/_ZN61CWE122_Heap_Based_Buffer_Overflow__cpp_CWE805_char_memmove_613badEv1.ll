@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_20450:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @anon1(ptr null)
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = inttoptr i64 %1 to ptr
  %4 = call ptr @memmove(ptr %3, ptr nonnull %stack_var_-120, i32 100)
  %5 = add i64 %1, 99
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  %7 = inttoptr i64 %1 to ptr
  call void @printLine(ptr %7)
  %8 = icmp eq i64 %1, 0
  br i1 %8, label %dec_label_pc_204df, label %dec_label_pc_204d3

dec_label_pc_204d3:                               ; preds = %dec_label_pc_20450
  %9 = ptrtoint ptr %stack_var_-120 to i64
  %10 = and i64 %9, 4294967288
  %11 = inttoptr i64 %10 to ptr
  call void @_ZdaPv(ptr %3, ptr %11)
  br label %dec_label_pc_204df

dec_label_pc_204df:                               ; preds = %dec_label_pc_204d3, %dec_label_pc_20450
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_204f4, label %dec_label_pc_204ef

dec_label_pc_204ef:                               ; preds = %dec_label_pc_204df
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_204f4

dec_label_pc_204f4:                               ; preds = %dec_label_pc_204ef, %dec_label_pc_204df
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_205ac:
  %0 = call i64 @_Znam(i64 50)
  %1 = inttoptr i64 %0 to ptr
  store i8 0, ptr %1, align 1
  ret i64 %0
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

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

