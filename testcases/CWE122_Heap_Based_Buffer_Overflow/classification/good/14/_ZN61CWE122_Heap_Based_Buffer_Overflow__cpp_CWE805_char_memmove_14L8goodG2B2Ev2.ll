@0 = external global i32
@global_var_6c054 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1dff8:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-128.0.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_6c054, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store ptr null, ptr %stack_var_-128.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_1e03b, label %dec_label_pc_1e026

dec_label_pc_1e026:                               ; preds = %dec_label_pc_1dff8
  %4 = call i64 @_Znam(i64 100)
  %5 = inttoptr i64 %4 to ptr
  store i8 0, ptr %5, align 1
  store ptr %5, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_1e03b

dec_label_pc_1e03b:                               ; preds = %dec_label_pc_1e026, %dec_label_pc_1dff8
  %stack_var_-128.0.reload = load ptr, ptr %stack_var_-128.0.reg2mem, align 8
  %6 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %7 = bitcast ptr %stack_var_-128.0.reload to ptr
  %8 = call ptr @memmove(ptr %7, ptr nonnull %stack_var_-120, i32 100)
  %9 = ptrtoint ptr %stack_var_-128.0.reload to i64
  %10 = add i64 %9, 99
  %11 = inttoptr i64 %10 to ptr
  store i8 0, ptr %11, align 1
  call void @printLine(ptr %stack_var_-128.0.reload)
  %12 = icmp eq ptr %stack_var_-128.0.reload, null
  br i1 %12, label %dec_label_pc_1e097, label %dec_label_pc_1e08b

dec_label_pc_1e08b:                               ; preds = %dec_label_pc_1e03b
  %13 = ptrtoint ptr %stack_var_-120 to i64
  %14 = and i64 %13, 4294967288
  %15 = inttoptr i64 %14 to ptr
  call void @_ZdaPv(ptr %7, ptr %15)
  br label %dec_label_pc_1e097

dec_label_pc_1e097:                               ; preds = %dec_label_pc_1e08b, %dec_label_pc_1e03b
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %17, label %dec_label_pc_1e0ac, label %dec_label_pc_1e0a7

dec_label_pc_1e0a7:                               ; preds = %dec_label_pc_1e097
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1e0ac

dec_label_pc_1e0ac:                               ; preds = %dec_label_pc_1e0a7, %dec_label_pc_1e097
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

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

