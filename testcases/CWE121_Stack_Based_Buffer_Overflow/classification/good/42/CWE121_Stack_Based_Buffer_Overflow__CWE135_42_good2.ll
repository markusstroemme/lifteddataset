@global_var_1000 = external global ptr
@global_var_ba968 = external constant [43 x i8]
@global_var_fff = external global i32

define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_631b3:
  ret ptr @global_var_ba968
}

define void @anon1() local_unnamed_addr {
dec_label_pc_631d0:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %stack_var_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store ptr null, ptr %stack_var_-40, align 8
  %2 = call ptr @anon0(ptr null)
  store ptr %2, ptr %stack_var_-40, align 8
  %3 = call i32 @strlen(ptr %2)
  %4 = sext i32 %3 to i64
  %5 = add nsw i64 %4, 24
  %6 = udiv i64 %5, 16
  %7 = mul i64 %6, 16
  %8 = and i64 %7, -4096
  %9 = sub i64 %0, %8
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_6324c

dec_label_pc_6324c:                               ; preds = %dec_label_pc_6324c, %dec_label_pc_631d0
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %10 = icmp eq i64 %rsp.0.reload, %9
  %11 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %11, ptr %rsp.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_63263, label %dec_label_pc_6324c

dec_label_pc_63263:                               ; preds = %dec_label_pc_6324c
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %12 = and i64 %7, %constexpr
  %13 = sub nsw i64 15, %12
  %14 = add i64 %13, %9
  %15 = and i64 %14, -16
  %16 = load ptr, ptr %stack_var_-40, align 8
  %17 = inttoptr i64 %15 to ptr
  %18 = call ptr @strcpy(ptr %17, ptr %16)
  call void @printLine(ptr %17)
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %1, %19
  br i1 %20, label %dec_label_pc_632d4, label %dec_label_pc_632cf

dec_label_pc_632cf:                               ; preds = %dec_label_pc_63263
  call void @__stack_chk_fail()
  br label %dec_label_pc_632d4

dec_label_pc_632d4:                               ; preds = %dec_label_pc_632cf, %dec_label_pc_63263
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

