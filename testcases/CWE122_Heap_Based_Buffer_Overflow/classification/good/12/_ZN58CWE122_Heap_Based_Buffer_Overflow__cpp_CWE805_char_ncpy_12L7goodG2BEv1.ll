@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2a480:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = call i64 @_Znam(i64 100)
  %3 = inttoptr i64 %2 to ptr
  store i8 0, ptr %3, align 1
  %4 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %5 = bitcast ptr %stack_var_-120 to ptr
  %6 = call ptr @strncpy(ptr %3, ptr nonnull %5, i32 99)
  %7 = add i64 %2, 99
  %8 = inttoptr i64 %7 to ptr
  store i8 0, ptr %8, align 1
  call void @printLine(ptr %3)
  %9 = icmp eq i64 %2, 0
  br i1 %9, label %dec_label_pc_2a539, label %dec_label_pc_2a52d

dec_label_pc_2a52d:                               ; preds = %dec_label_pc_2a480
  %10 = ptrtoint ptr %stack_var_-120 to i64
  %11 = inttoptr i64 %2 to ptr
  %12 = and i64 %10, 4294967288
  %13 = inttoptr i64 %12 to ptr
  call void @_ZdaPv(ptr %11, ptr %13)
  br label %dec_label_pc_2a539

dec_label_pc_2a539:                               ; preds = %dec_label_pc_2a52d, %dec_label_pc_2a480
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %15, label %dec_label_pc_2a54e, label %dec_label_pc_2a549

dec_label_pc_2a549:                               ; preds = %dec_label_pc_2a539
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2a54e

dec_label_pc_2a54e:                               ; preds = %dec_label_pc_2a549, %dec_label_pc_2a539
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_4336e:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

