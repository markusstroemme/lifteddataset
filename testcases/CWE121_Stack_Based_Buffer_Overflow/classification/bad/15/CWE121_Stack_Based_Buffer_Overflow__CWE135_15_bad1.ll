@global_var_1000 = external global ptr
@global_var_fff = external global i32
@global_var_b9fd0 = external constant [2 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_608eb:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %stack_var_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store ptr @global_var_b9fd0, ptr %stack_var_-40, align 8
  %2 = call i32 @strlen(ptr @global_var_b9fd0)
  %3 = sext i32 %2 to i64
  %4 = mul i64 %3, 4
  %5 = add nsw i64 %4, 27
  %6 = udiv i64 %5, 16
  %7 = mul i64 %6, 16
  %8 = and i64 %7, -4096
  %9 = sub i64 %0, %8
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_60967

dec_label_pc_60967:                               ; preds = %dec_label_pc_60967, %dec_label_pc_608eb
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %10 = icmp eq i64 %rsp.0.reload, %9
  %11 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %11, ptr %rsp.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_6097e, label %dec_label_pc_60967

dec_label_pc_6097e:                               ; preds = %dec_label_pc_60967
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %12 = and i64 %7, %constexpr
  %13 = sub nsw i64 15, %12
  %14 = add i64 %13, %9
  %15 = and i64 %14, -16
  %16 = load ptr, ptr %stack_var_-40, align 8
  %17 = inttoptr i64 %15 to ptr
  %18 = call ptr @wcscpy(ptr %17, ptr %16)
  %19 = inttoptr i64 %15 to ptr
  call void @printLine(ptr %19)
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %1, %20
  br i1 %21, label %dec_label_pc_609f0, label %dec_label_pc_609eb

dec_label_pc_609eb:                               ; preds = %dec_label_pc_6097e
  call void @__stack_chk_fail()
  br label %dec_label_pc_609f0

dec_label_pc_609f0:                               ; preds = %dec_label_pc_609eb, %dec_label_pc_6097e
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

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @wcscpy(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

