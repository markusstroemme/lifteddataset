@global_var_1000 = external global ptr
@global_var_b9b10 = external constant [43 x i32]
@global_var_ef080 = external local_unnamed_addr global i32
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_5eb3f:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-40 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ef080, align 4
  %2 = icmp eq i32 %1, 0
  %spec.store.select = select i1 %2, ptr null, ptr @global_var_b9b10
  store ptr %spec.store.select, ptr %stack_var_-40, align 8
  br i1 %2, label %dec_label_pc_5ec45, label %dec_label_pc_5eb85

dec_label_pc_5eb85:                               ; preds = %dec_label_pc_5eb3f
  %3 = ptrtoint ptr %stack_var_-40 to i64
  %4 = bitcast ptr %spec.store.select to ptr
  %5 = call i32 @strlen(ptr %4)
  %6 = sext i32 %5 to i64
  %7 = mul i64 %6, 4
  %8 = add nsw i64 %7, 27
  %9 = udiv i64 %8, 16
  %10 = mul i64 %9, 16
  %11 = and i64 %10, -4096
  %12 = sub i64 %3, %11
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_5ebd2

dec_label_pc_5ebd2:                               ; preds = %dec_label_pc_5ebd2, %dec_label_pc_5eb85
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %13 = icmp eq i64 %rsp.0.reload, %12
  %14 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %14, ptr %rsp.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_5ebe9, label %dec_label_pc_5ebd2

dec_label_pc_5ebe9:                               ; preds = %dec_label_pc_5ebd2
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %15 = and i64 %10, %constexpr
  %16 = sub nsw i64 15, %15
  %17 = add i64 %16, %12
  %18 = and i64 %17, -16
  %19 = load ptr, ptr %stack_var_-40, align 8
  %20 = inttoptr i64 %18 to ptr
  %21 = call ptr @wcscpy(ptr %20, ptr %19)
  %22 = inttoptr i64 %18 to ptr
  call void @printLine(ptr %22)
  br label %dec_label_pc_5ec45

dec_label_pc_5ec45:                               ; preds = %dec_label_pc_5ebe9, %dec_label_pc_5eb3f
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %0, %23
  br i1 %24, label %dec_label_pc_5ec5a, label %dec_label_pc_5ec55

dec_label_pc_5ec55:                               ; preds = %dec_label_pc_5ec45
  call void @__stack_chk_fail()
  br label %dec_label_pc_5ec5a

dec_label_pc_5ec5a:                               ; preds = %dec_label_pc_5ec55, %dec_label_pc_5ec45
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

