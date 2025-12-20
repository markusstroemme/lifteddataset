@global_var_528f6 = external constant [3 x i8]
@0 = external global i32
@global_var_6c1c0 = external local_unnamed_addr global ptr

define i64 @anon0() local_unnamed_addr {
dec_label_pc_32bda:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_6c1c0, align 8
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr %1, i32 100, ptr @global_var_528f6, ptr nonnull %stack_var_-120)
  call void @printLine(ptr %1)
  %4 = icmp eq ptr %1, null
  br i1 %4, label %dec_label_pc_32c5d, label %dec_label_pc_32c51

dec_label_pc_32c51:                               ; preds = %dec_label_pc_32bda
  %5 = bitcast ptr %1 to ptr
  call void @_ZdaPv(ptr %5, ptr inttoptr (i64 100 to ptr))
  br label %dec_label_pc_32c5d

dec_label_pc_32c5d:                               ; preds = %dec_label_pc_32c51, %dec_label_pc_32bda
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_32c72, label %dec_label_pc_32c6d

dec_label_pc_32c6d:                               ; preds = %dec_label_pc_32c5d
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_32c72

dec_label_pc_32c72:                               ; preds = %dec_label_pc_32c6d, %dec_label_pc_32c5d
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_32c74:
  %0 = call i64 @_Znam(i64 100)
  %1 = inttoptr i64 %0 to ptr
  store i8 0, ptr %1, align 1
  store ptr %1, ptr @global_var_6c1c0, align 8
  %2 = call i64 @anon0()
  ret i64 %2
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

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

