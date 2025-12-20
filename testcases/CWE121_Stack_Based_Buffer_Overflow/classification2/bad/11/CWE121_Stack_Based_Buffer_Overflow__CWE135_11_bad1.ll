@global_var_1000 = external global ptr
@global_var_b9c08 = external constant [43 x i32]
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_5f11c:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-40 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-40, align 8
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_5f158, label %dec_label_pc_5f14d

dec_label_pc_5f14d:                               ; preds = %dec_label_pc_5f11c
  store ptr @global_var_b9c08, ptr %stack_var_-40, align 8
  br label %dec_label_pc_5f158

dec_label_pc_5f158:                               ; preds = %dec_label_pc_5f14d, %dec_label_pc_5f11c
  %3 = call i32 @globalReturnsTrue()
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %dec_label_pc_5f22a, label %dec_label_pc_5f16a

dec_label_pc_5f16a:                               ; preds = %dec_label_pc_5f158
  %5 = ptrtoint ptr %stack_var_-40 to i64
  %6 = load ptr, ptr %stack_var_-40, align 8
  %7 = bitcast ptr %6 to ptr
  %8 = call i32 @strlen(ptr %7)
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 4
  %11 = add nsw i64 %10, 27
  %12 = udiv i64 %11, 16
  %13 = mul i64 %12, 16
  %14 = and i64 %13, -4096
  %15 = sub i64 %5, %14
  store i64 %5, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_5f1b7

dec_label_pc_5f1b7:                               ; preds = %dec_label_pc_5f1b7, %dec_label_pc_5f16a
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %16 = icmp eq i64 %rsp.0.reload, %15
  %17 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %17, ptr %rsp.0.reg2mem, align 8
  br i1 %16, label %dec_label_pc_5f1ce, label %dec_label_pc_5f1b7

dec_label_pc_5f1ce:                               ; preds = %dec_label_pc_5f1b7
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %18 = and i64 %13, %constexpr
  %19 = sub nsw i64 15, %18
  %20 = add i64 %19, %15
  %21 = and i64 %20, -16
  %22 = load ptr, ptr %stack_var_-40, align 8
  %23 = inttoptr i64 %21 to ptr
  %24 = call ptr @wcscpy(ptr %23, ptr %22)
  %25 = inttoptr i64 %21 to ptr
  call void @printLine(ptr %25)
  br label %dec_label_pc_5f22a

dec_label_pc_5f22a:                               ; preds = %dec_label_pc_5f1ce, %dec_label_pc_5f158
  %26 = call i64 @__readfsqword(i64 40)
  %27 = icmp eq i64 %0, %26
  br i1 %27, label %dec_label_pc_5f23f, label %dec_label_pc_5f23a

dec_label_pc_5f23a:                               ; preds = %dec_label_pc_5f22a
  call void @__stack_chk_fail()
  br label %dec_label_pc_5f23f

dec_label_pc_5f23f:                               ; preds = %dec_label_pc_5f23a, %dec_label_pc_5f22a
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

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_a0bcb:
  ret i32 1
}

declare i32 @strlen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @wcscpy(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

