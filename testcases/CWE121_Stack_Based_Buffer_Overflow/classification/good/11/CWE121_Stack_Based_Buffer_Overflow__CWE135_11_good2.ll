@global_var_1000 = external global ptr
@global_var_b9c08 = external constant [43 x i32]
@global_var_fff = external global i32
@global_var_c074c = external constant [5 x i32]

define void @anon0() local_unnamed_addr {
dec_label_pc_5f376:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-40 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-40, align 8
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_5f3b2, label %dec_label_pc_5f3a7

dec_label_pc_5f3a7:                               ; preds = %dec_label_pc_5f376
  store ptr @global_var_b9c08, ptr %stack_var_-40, align 8
  br label %dec_label_pc_5f3b2

dec_label_pc_5f3b2:                               ; preds = %dec_label_pc_5f3a7, %dec_label_pc_5f376
  %3 = call i32 @globalReturnsTrue()
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %dec_label_pc_5f484, label %dec_label_pc_5f3c4

dec_label_pc_5f3c4:                               ; preds = %dec_label_pc_5f3b2
  %5 = ptrtoint ptr %stack_var_-40 to i64
  %6 = load ptr, ptr %stack_var_-40, align 8
  %7 = call i32 @wcslen(ptr %6)
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 4
  %10 = add nsw i64 %9, 27
  %11 = udiv i64 %10, 16
  %12 = mul i64 %11, 16
  %13 = and i64 %12, -4096
  %14 = sub i64 %5, %13
  store i64 %5, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_5f411

dec_label_pc_5f411:                               ; preds = %dec_label_pc_5f411, %dec_label_pc_5f3c4
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %15 = icmp eq i64 %rsp.0.reload, %14
  %16 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %16, ptr %rsp.0.reg2mem, align 8
  br i1 %15, label %dec_label_pc_5f428, label %dec_label_pc_5f411

dec_label_pc_5f428:                               ; preds = %dec_label_pc_5f411
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %17 = and i64 %12, %constexpr
  %18 = sub nsw i64 15, %17
  %19 = add i64 %18, %14
  %20 = and i64 %19, -16
  %21 = load ptr, ptr %stack_var_-40, align 8
  %22 = inttoptr i64 %20 to ptr
  %23 = call ptr @wcscpy(ptr %22, ptr %21)
  call void @printWLine(ptr %22)
  br label %dec_label_pc_5f484

dec_label_pc_5f484:                               ; preds = %dec_label_pc_5f428, %dec_label_pc_5f3b2
  %24 = call i64 @__readfsqword(i64 40)
  %25 = icmp eq i64 %0, %24
  br i1 %25, label %dec_label_pc_5f499, label %dec_label_pc_5f494

dec_label_pc_5f494:                               ; preds = %dec_label_pc_5f484
  call void @__stack_chk_fail()
  br label %dec_label_pc_5f499

dec_label_pc_5f499:                               ; preds = %dec_label_pc_5f494, %dec_label_pc_5f484
  ret void
}

define void @printWLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06e1:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a0713, label %dec_label_pc_a06f8

dec_label_pc_a06f8:                               ; preds = %dec_label_pc_a06e1
  %1 = call i32 (ptr, ...) @wprintf(ptr @global_var_c074c)
  br label %dec_label_pc_a0713

dec_label_pc_a0713:                               ; preds = %dec_label_pc_a06f8, %dec_label_pc_a06e1
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_a0bcb:
  ret i32 1
}

declare i32 @wcslen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @wprintf(ptr, ...) local_unnamed_addr

declare ptr @wcscpy(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

