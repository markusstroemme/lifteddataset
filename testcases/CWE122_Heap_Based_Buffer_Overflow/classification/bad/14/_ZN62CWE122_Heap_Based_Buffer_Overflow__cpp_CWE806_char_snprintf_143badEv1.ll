@global_var_47a8a = external constant [3 x i8]
@0 = external global i32
@global_var_5c04c = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_34abc:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = load i32, ptr @global_var_5c04c, align 4
  %3 = icmp eq i32 %2, 5
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_34b11, label %dec_label_pc_34af0

dec_label_pc_34af0:                               ; preds = %dec_label_pc_34abc
  %5 = inttoptr i64 %1 to ptr
  %6 = call ptr @memset(ptr %5, i32 65, i32 99)
  %7 = add i64 %1, 99
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  br label %dec_label_pc_34b11

dec_label_pc_34b11:                               ; preds = %dec_label_pc_34af0, %dec_label_pc_34abc
  %9 = inttoptr i64 %1 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %10 = call i32 @strlen(ptr %9)
  %11 = bitcast ptr %stack_var_-72 to ptr
  %12 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr nonnull %11, i32 %10, ptr @global_var_47a8a, ptr %9)
  call void @printLine(ptr %9)
  %13 = icmp eq i64 %1, 0
  br i1 %13, label %dec_label_pc_34b94, label %dec_label_pc_34b88

dec_label_pc_34b88:                               ; preds = %dec_label_pc_34b11
  %14 = zext i32 %10 to i64
  %15 = inttoptr i64 %1 to ptr
  %16 = inttoptr i64 %14 to ptr
  call void @_ZdaPv(ptr %15, ptr %16)
  br label %dec_label_pc_34b94

dec_label_pc_34b94:                               ; preds = %dec_label_pc_34b88, %dec_label_pc_34b11
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %0, %17
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %18, label %dec_label_pc_34ba9, label %dec_label_pc_34ba4

dec_label_pc_34ba4:                               ; preds = %dec_label_pc_34b94
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_34ba9

dec_label_pc_34ba9:                               ; preds = %dec_label_pc_34ba4, %dec_label_pc_34b94
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3a5bd:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3a5e0, label %dec_label_pc_3a5d4

dec_label_pc_3a5d4:                               ; preds = %dec_label_pc_3a5bd
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3a5e0

dec_label_pc_3a5e0:                               ; preds = %dec_label_pc_3a5d4, %dec_label_pc_3a5bd
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

