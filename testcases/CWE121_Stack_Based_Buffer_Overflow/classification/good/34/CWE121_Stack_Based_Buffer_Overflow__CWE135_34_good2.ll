@global_var_1000 = external global ptr
@global_var_fff = external global i32
@global_var_ba6f8 = external constant [2 x i8]
@global_var_c074c = external constant [5 x i32]

define void @anon0() local_unnamed_addr {
dec_label_pc_62bd1:
  %rsp.0.reg2mem = alloca i64, align 8
  %data_-56 = alloca ptr, align 8
  %0 = ptrtoint ptr %data_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store ptr @global_var_ba6f8, ptr %data_-56, align 8
  %2 = call i32 @wcslen(ptr @global_var_ba6f8)
  %3 = sext i32 %2 to i64
  %4 = mul i64 %3, 4
  %5 = add nsw i64 %4, 27
  %6 = udiv i64 %5, 16
  %7 = mul i64 %6, 16
  %8 = and i64 %7, -4096
  %9 = sub i64 %0, %8
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_62c5c

dec_label_pc_62c5c:                               ; preds = %dec_label_pc_62c5c, %dec_label_pc_62bd1
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %10 = icmp eq i64 %rsp.0.reload, %9
  %11 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %11, ptr %rsp.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_62c73, label %dec_label_pc_62c5c

dec_label_pc_62c73:                               ; preds = %dec_label_pc_62c5c
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %12 = and i64 %7, %constexpr
  %13 = sub nsw i64 15, %12
  %14 = add i64 %13, %9
  %15 = and i64 %14, -16
  %16 = inttoptr i64 %15 to ptr
  %17 = call ptr @wcscpy(ptr %16, ptr @global_var_ba6f8)
  call void @printWLine(ptr %16)
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %1, %18
  br i1 %19, label %dec_label_pc_62ce4, label %dec_label_pc_62cdf

dec_label_pc_62cdf:                               ; preds = %dec_label_pc_62c73
  call void @__stack_chk_fail()
  br label %dec_label_pc_62ce4

dec_label_pc_62ce4:                               ; preds = %dec_label_pc_62cdf, %dec_label_pc_62c73
  ret void
}

define void @printWLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06e1:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a0713, label %dec_label_pc_a06f8

dec_label_pc_a06f8:                               ; preds = %dec_label_pc_a06e1
  %1 = call i32 (ptr, ...) @wprintf(ptr @global_var_c074c)
  br label %dec_label_pc_a0713

dec_label_pc_a0713:                               ; preds = %dec_label_pc_a06f8, %dec_label_pc_a06e1
  ret void
}

declare i32 @wcslen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @wprintf(ptr, ...) local_unnamed_addr

declare ptr @wcscpy(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

