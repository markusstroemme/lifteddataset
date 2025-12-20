@global_var_1000 = external global ptr
@global_var_ba240 = external constant [43 x i8]
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_6141a:
  %rsp.0.reg2mem = alloca i64, align 8
  %h_-56 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %h_-56 to i64
  %2 = call i32 @strlen(ptr @global_var_ba240)
  %3 = sext i32 %2 to i64
  %4 = add nsw i64 %3, 24
  %5 = udiv i64 %4, 16
  %6 = mul i64 %5, 16
  %7 = and i64 %6, -4096
  %8 = sub i64 %1, %7
  store i64 %1, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_61463

dec_label_pc_61463:                               ; preds = %dec_label_pc_61463, %dec_label_pc_6141a
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %9 = icmp eq i64 %rsp.0.reload, %8
  %10 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %10, ptr %rsp.0.reg2mem, align 8
  br i1 %9, label %dec_label_pc_614e4, label %dec_label_pc_61463

dec_label_pc_614e4:                               ; preds = %dec_label_pc_61463
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %11 = and i64 %6, %constexpr
  %12 = sub nsw i64 15, %11
  %13 = add i64 %12, %8
  %14 = and i64 %13, -16
  %15 = inttoptr i64 %14 to ptr
  %16 = call ptr @strcpy(ptr %15, ptr @global_var_ba240)
  call void @printLine(ptr %15)
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %0, %17
  br i1 %18, label %dec_label_pc_614f9, label %dec_label_pc_614f4

dec_label_pc_614f4:                               ; preds = %dec_label_pc_614e4
  call void @__stack_chk_fail()
  br label %dec_label_pc_614f9

dec_label_pc_614f9:                               ; preds = %dec_label_pc_614f4, %dec_label_pc_614e4
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

