@global_var_1000 = external global ptr
@global_var_baed8 = external constant [43 x i32]
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_64bc8:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %stack_var_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-40, align 8
  %2 = call ptr @anon1(ptr null)
  %3 = bitcast ptr %2 to ptr
  store ptr %3, ptr %stack_var_-40, align 8
  %4 = call i32 @strlen(ptr %2)
  %5 = sext i32 %4 to i64
  %6 = mul i64 %5, 4
  %7 = add nsw i64 %6, 27
  %8 = udiv i64 %7, 16
  %9 = mul i64 %8, 16
  %10 = and i64 %9, -4096
  %11 = sub i64 %0, %10
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_64c48

dec_label_pc_64c48:                               ; preds = %dec_label_pc_64c48, %dec_label_pc_64bc8
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %12 = icmp eq i64 %rsp.0.reload, %11
  %13 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %13, ptr %rsp.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_64c5f, label %dec_label_pc_64c48

dec_label_pc_64c5f:                               ; preds = %dec_label_pc_64c48
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %14 = and i64 %9, %constexpr
  %15 = sub nsw i64 15, %14
  %16 = add i64 %15, %11
  %17 = and i64 %16, -16
  %18 = load ptr, ptr %stack_var_-40, align 8
  %19 = inttoptr i64 %17 to ptr
  %20 = call ptr @wcscpy(ptr %19, ptr %18)
  %21 = inttoptr i64 %17 to ptr
  call void @printLine(ptr %21)
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %1, %22
  br i1 %23, label %dec_label_pc_64cd0, label %dec_label_pc_64ccb

dec_label_pc_64ccb:                               ; preds = %dec_label_pc_64c5f
  call void @__stack_chk_fail()
  br label %dec_label_pc_64cd0

dec_label_pc_64cd0:                               ; preds = %dec_label_pc_64ccb, %dec_label_pc_64c5f
  ret void
}

define ptr @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_64f01:
  ret ptr @global_var_baed8
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

