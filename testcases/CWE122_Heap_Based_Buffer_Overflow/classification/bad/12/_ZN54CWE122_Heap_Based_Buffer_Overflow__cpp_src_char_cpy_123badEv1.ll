@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_3239b:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = call i32 @globalReturnsTrueOrFalse()
  %3 = icmp eq i32 %2, 0
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  %6 = inttoptr i64 %1 to ptr
  br i1 %5, label %dec_label_pc_323f5, label %dec_label_pc_323d2

dec_label_pc_323d2:                               ; preds = %dec_label_pc_3239b
  %7 = call ptr @memset(ptr %6, i32 65, i32 99)
  %8 = add i64 %1, 99
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  br label %dec_label_pc_32416

dec_label_pc_323f5:                               ; preds = %dec_label_pc_3239b
  %10 = call ptr @memset(ptr %6, i32 65, i32 49)
  %11 = add i64 %1, 49
  %12 = inttoptr i64 %11 to ptr
  store i8 0, ptr %12, align 1
  br label %dec_label_pc_32416

dec_label_pc_32416:                               ; preds = %dec_label_pc_323f5, %dec_label_pc_323d2
  %13 = inttoptr i64 %1 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %14 = bitcast ptr %stack_var_-72 to ptr
  %15 = call ptr @strcpy(ptr nonnull %14, ptr %13)
  call void @printLine(ptr %13)
  %16 = icmp eq i64 %1, 0
  br i1 %16, label %dec_label_pc_3247e, label %dec_label_pc_32472

dec_label_pc_32472:                               ; preds = %dec_label_pc_32416
  %17 = and i64 %1, 4294967295
  %18 = inttoptr i64 %17 to ptr
  call void @_ZdaPv(ptr %6, ptr %18)
  br label %dec_label_pc_3247e

dec_label_pc_3247e:                               ; preds = %dec_label_pc_32472, %dec_label_pc_32416
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %0, %19
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %20, label %dec_label_pc_32493, label %dec_label_pc_3248e

dec_label_pc_3248e:                               ; preds = %dec_label_pc_3247e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_32493

dec_label_pc_32493:                               ; preds = %dec_label_pc_3248e, %dec_label_pc_3247e
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_38066:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

