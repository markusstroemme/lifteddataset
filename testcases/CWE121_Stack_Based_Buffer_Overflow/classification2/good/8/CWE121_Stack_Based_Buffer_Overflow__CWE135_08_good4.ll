@global_var_1000 = external global ptr
@global_var_b99e8 = external constant [43 x i8]
@global_var_fff = external global i32

define i32 @staticReturnsTrue.990() local_unnamed_addr {
dec_label_pc_5df3f:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_5e40e:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-40 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-40, align 8
  %1 = call i32 @staticReturnsTrue.990()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_5e44a, label %dec_label_pc_5e43f

dec_label_pc_5e43f:                               ; preds = %dec_label_pc_5e40e
  store ptr @global_var_b99e8, ptr %stack_var_-40, align 8
  br label %dec_label_pc_5e44a

dec_label_pc_5e44a:                               ; preds = %dec_label_pc_5e43f, %dec_label_pc_5e40e
  %3 = call i32 @staticReturnsTrue.990()
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %dec_label_pc_5e518, label %dec_label_pc_5e45c

dec_label_pc_5e45c:                               ; preds = %dec_label_pc_5e44a
  %5 = ptrtoint ptr %stack_var_-40 to i64
  %6 = load ptr, ptr %stack_var_-40, align 8
  %7 = call i32 @strlen(ptr %6)
  %8 = sext i32 %7 to i64
  %9 = add nsw i64 %8, 24
  %10 = udiv i64 %9, 16
  %11 = mul i64 %10, 16
  %12 = and i64 %11, -4096
  %13 = sub i64 %5, %12
  store i64 %5, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_5e4a5

dec_label_pc_5e4a5:                               ; preds = %dec_label_pc_5e4a5, %dec_label_pc_5e45c
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %14 = icmp eq i64 %rsp.0.reload, %13
  %15 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %15, ptr %rsp.0.reg2mem, align 8
  br i1 %14, label %dec_label_pc_5e4bc, label %dec_label_pc_5e4a5

dec_label_pc_5e4bc:                               ; preds = %dec_label_pc_5e4a5
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %16 = and i64 %11, %constexpr
  %17 = sub nsw i64 15, %16
  %18 = add i64 %17, %13
  %19 = and i64 %18, -16
  %20 = load ptr, ptr %stack_var_-40, align 8
  %21 = inttoptr i64 %19 to ptr
  %22 = call ptr @strcpy(ptr %21, ptr %20)
  call void @printLine(ptr %21)
  br label %dec_label_pc_5e518

dec_label_pc_5e518:                               ; preds = %dec_label_pc_5e4bc, %dec_label_pc_5e44a
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %0, %23
  br i1 %24, label %dec_label_pc_5e52d, label %dec_label_pc_5e528

dec_label_pc_5e528:                               ; preds = %dec_label_pc_5e518
  call void @__stack_chk_fail()
  br label %dec_label_pc_5e52d

dec_label_pc_5e52d:                               ; preds = %dec_label_pc_5e528, %dec_label_pc_5e518
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

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

