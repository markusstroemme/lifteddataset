@global_var_1000 = external global ptr
@global_var_b9920 = external constant [43 x i32]
@global_var_fff = external global i32

define i32 @staticReturnsTrue.990() local_unnamed_addr {
dec_label_pc_5df3f:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_5df5d:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-40 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-40, align 8
  %1 = call i32 @staticReturnsTrue.990()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_5df99, label %dec_label_pc_5df8e

dec_label_pc_5df8e:                               ; preds = %dec_label_pc_5df5d
  store ptr @global_var_b9920, ptr %stack_var_-40, align 8
  br label %dec_label_pc_5df99

dec_label_pc_5df99:                               ; preds = %dec_label_pc_5df8e, %dec_label_pc_5df5d
  %3 = call i32 @staticReturnsTrue.990()
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %dec_label_pc_5e06b, label %dec_label_pc_5dfab

dec_label_pc_5dfab:                               ; preds = %dec_label_pc_5df99
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
  br label %dec_label_pc_5dff8

dec_label_pc_5dff8:                               ; preds = %dec_label_pc_5dff8, %dec_label_pc_5dfab
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %16 = icmp eq i64 %rsp.0.reload, %15
  %17 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %17, ptr %rsp.0.reg2mem, align 8
  br i1 %16, label %dec_label_pc_5e00f, label %dec_label_pc_5dff8

dec_label_pc_5e00f:                               ; preds = %dec_label_pc_5dff8
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
  br label %dec_label_pc_5e06b

dec_label_pc_5e06b:                               ; preds = %dec_label_pc_5e00f, %dec_label_pc_5df99
  %26 = call i64 @__readfsqword(i64 40)
  %27 = icmp eq i64 %0, %26
  br i1 %27, label %dec_label_pc_5e080, label %dec_label_pc_5e07b

dec_label_pc_5e07b:                               ; preds = %dec_label_pc_5e06b
  call void @__stack_chk_fail()
  br label %dec_label_pc_5e080

dec_label_pc_5e080:                               ; preds = %dec_label_pc_5e07b, %dec_label_pc_5e06b
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

