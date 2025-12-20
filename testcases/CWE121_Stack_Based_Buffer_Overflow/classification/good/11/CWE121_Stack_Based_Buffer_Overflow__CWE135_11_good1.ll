@global_var_1000 = external global ptr
@global_var_b9c08 = external constant [43 x i32]
@global_var_b9cb4 = external constant [21 x i8]
@global_var_fff = external global i32
@global_var_c074c = external constant [5 x i32]

define void @anon0() local_unnamed_addr {
dec_label_pc_5f241:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-40 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-40, align 8
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_5f27d, label %dec_label_pc_5f272

dec_label_pc_5f272:                               ; preds = %dec_label_pc_5f241
  store ptr @global_var_b9c08, ptr %stack_var_-40, align 8
  br label %dec_label_pc_5f27d

dec_label_pc_5f27d:                               ; preds = %dec_label_pc_5f272, %dec_label_pc_5f241
  %3 = call i32 @globalReturnsFalse()
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %dec_label_pc_5f29f, label %dec_label_pc_5f28b

dec_label_pc_5f28b:                               ; preds = %dec_label_pc_5f27d
  call void @printLine(ptr @global_var_b9cb4)
  br label %dec_label_pc_5f35f

dec_label_pc_5f29f:                               ; preds = %dec_label_pc_5f27d
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
  br label %dec_label_pc_5f2ec

dec_label_pc_5f2ec:                               ; preds = %dec_label_pc_5f2ec, %dec_label_pc_5f29f
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %15 = icmp eq i64 %rsp.0.reload, %14
  %16 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %16, ptr %rsp.0.reg2mem, align 8
  br i1 %15, label %dec_label_pc_5f303, label %dec_label_pc_5f2ec

dec_label_pc_5f303:                               ; preds = %dec_label_pc_5f2ec
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %17 = and i64 %12, %constexpr
  %18 = sub nsw i64 15, %17
  %19 = add i64 %18, %14
  %20 = and i64 %19, -16
  %21 = load ptr, ptr %stack_var_-40, align 8
  %22 = inttoptr i64 %20 to ptr
  %23 = call ptr @wcscpy(ptr %22, ptr %21)
  call void @printWLine(ptr %22)
  br label %dec_label_pc_5f35f

dec_label_pc_5f35f:                               ; preds = %dec_label_pc_5f303, %dec_label_pc_5f28b
  %24 = call i64 @__readfsqword(i64 40)
  %25 = icmp eq i64 %0, %24
  br i1 %25, label %dec_label_pc_5f374, label %dec_label_pc_5f36f

dec_label_pc_5f36f:                               ; preds = %dec_label_pc_5f35f
  call void @__stack_chk_fail()
  br label %dec_label_pc_5f374

dec_label_pc_5f374:                               ; preds = %dec_label_pc_5f36f, %dec_label_pc_5f35f
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06bb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a06de, label %dec_label_pc_a06d2

dec_label_pc_a06d2:                               ; preds = %dec_label_pc_a06bb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_a06de

dec_label_pc_a06de:                               ; preds = %dec_label_pc_a06d2, %dec_label_pc_a06bb
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

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_a0bda:
  ret i32 0
}

declare i32 @wcslen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @wprintf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @wcscpy(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

