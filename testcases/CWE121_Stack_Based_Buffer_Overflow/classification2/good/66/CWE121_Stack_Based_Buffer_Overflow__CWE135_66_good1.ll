@global_var_1000 = external global ptr
@global_var_fff = external global i32

define void @anon1() local_unnamed_addr {
dec_label_pc_65b96:
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-56 to ptr
  call void @anon0(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_65bed, label %dec_label_pc_65be8

dec_label_pc_65be8:                               ; preds = %dec_label_pc_65b96
  call void @__stack_chk_fail()
  br label %dec_label_pc_65bed

dec_label_pc_65bed:                               ; preds = %dec_label_pc_65be8, %dec_label_pc_65b96
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_65d69:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = ptrtoint ptr %dataArray to i64
  %3 = add i64 %2, 16
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = inttoptr i64 %5 to ptr
  %7 = call i32 @strlen(ptr %6)
  %8 = sext i32 %7 to i64
  %9 = add nsw i64 %8, 24
  %10 = udiv i64 %9, 16
  %11 = mul i64 %10, 16
  %12 = and i64 %11, -4096
  %13 = sub i64 %0, %12
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_65ddd

dec_label_pc_65ddd:                               ; preds = %dec_label_pc_65ddd, %dec_label_pc_65d69
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %14 = icmp eq i64 %rsp.0.reload, %13
  %15 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %15, ptr %rsp.0.reg2mem, align 8
  br i1 %14, label %dec_label_pc_65df4, label %dec_label_pc_65ddd

dec_label_pc_65df4:                               ; preds = %dec_label_pc_65ddd
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %16 = and i64 %11, %constexpr
  %17 = sub nsw i64 15, %16
  %18 = add i64 %17, %13
  %19 = and i64 %18, -16
  %20 = inttoptr i64 %19 to ptr
  %21 = call ptr @strcpy(ptr %20, ptr %6)
  call void @printLine(ptr %20)
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %1, %22
  br i1 %23, label %dec_label_pc_65e65, label %dec_label_pc_65e60

dec_label_pc_65e60:                               ; preds = %dec_label_pc_65df4
  call void @__stack_chk_fail()
  br label %dec_label_pc_65e65

dec_label_pc_65e65:                               ; preds = %dec_label_pc_65e60, %dec_label_pc_65df4
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

