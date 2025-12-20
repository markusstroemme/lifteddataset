@global_var_1000 = external global ptr
@global_var_b9828 = external constant [43 x i32]
@global_var_fff = external global i32
@global_var_ef05c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_5d958:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-40 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ef05c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  %spec.store.select = select i1 %3, ptr null, ptr @global_var_b9828
  store ptr %spec.store.select, ptr %stack_var_-40, align 8
  br i1 %3, label %dec_label_pc_5da60, label %dec_label_pc_5d9a0

dec_label_pc_5d9a0:                               ; preds = %dec_label_pc_5d958
  %4 = ptrtoint ptr %stack_var_-40 to i64
  %5 = bitcast ptr %spec.store.select to ptr
  %6 = call i32 @strlen(ptr %5)
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 4
  %9 = add nsw i64 %8, 27
  %10 = udiv i64 %9, 16
  %11 = mul i64 %10, 16
  %12 = and i64 %11, -4096
  %13 = sub i64 %4, %12
  store i64 %4, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_5d9ed

dec_label_pc_5d9ed:                               ; preds = %dec_label_pc_5d9ed, %dec_label_pc_5d9a0
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %14 = icmp eq i64 %rsp.0.reload, %13
  %15 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %15, ptr %rsp.0.reg2mem, align 8
  br i1 %14, label %dec_label_pc_5da04, label %dec_label_pc_5d9ed

dec_label_pc_5da04:                               ; preds = %dec_label_pc_5d9ed
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %16 = and i64 %11, %constexpr
  %17 = sub nsw i64 15, %16
  %18 = add i64 %17, %13
  %19 = and i64 %18, -16
  %20 = load ptr, ptr %stack_var_-40, align 8
  %21 = inttoptr i64 %19 to ptr
  %22 = call ptr @wcscpy(ptr %21, ptr %20)
  %23 = inttoptr i64 %19 to ptr
  call void @printLine(ptr %23)
  br label %dec_label_pc_5da60

dec_label_pc_5da60:                               ; preds = %dec_label_pc_5da04, %dec_label_pc_5d958
  %24 = call i64 @__readfsqword(i64 40)
  %25 = icmp eq i64 %0, %24
  br i1 %25, label %dec_label_pc_5da75, label %dec_label_pc_5da70

dec_label_pc_5da70:                               ; preds = %dec_label_pc_5da60
  call void @__stack_chk_fail()
  br label %dec_label_pc_5da75

dec_label_pc_5da75:                               ; preds = %dec_label_pc_5da70, %dec_label_pc_5da60
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

