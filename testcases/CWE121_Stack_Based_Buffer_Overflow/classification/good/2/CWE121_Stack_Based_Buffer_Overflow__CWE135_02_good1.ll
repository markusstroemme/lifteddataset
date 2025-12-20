@global_var_1000 = external global ptr
@global_var_fff = external global i32
@global_var_b9370 = external constant [2 x i8]
@global_var_c074c = external constant [5 x i32]

define void @anon0() local_unnamed_addr {
dec_label_pc_5be48:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %stack_var_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store ptr @global_var_b9370, ptr %stack_var_-40, align 8
  %2 = call i32 @wcslen(ptr @global_var_b9370)
  %3 = sext i32 %2 to i64
  %4 = mul i64 %3, 4
  %5 = add nsw i64 %4, 27
  %6 = udiv i64 %5, 16
  %7 = mul i64 %6, 16
  %8 = and i64 %7, -4096
  %9 = sub i64 %0, %8
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_5bec3

dec_label_pc_5bec3:                               ; preds = %dec_label_pc_5bec3, %dec_label_pc_5be48
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %10 = icmp eq i64 %rsp.0.reload, %9
  %11 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %11, ptr %rsp.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_5beda, label %dec_label_pc_5bec3

dec_label_pc_5beda:                               ; preds = %dec_label_pc_5bec3
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %12 = and i64 %7, %constexpr
  %13 = sub nsw i64 15, %12
  %14 = add i64 %13, %9
  %15 = and i64 %14, -16
  %16 = load ptr, ptr %stack_var_-40, align 8
  %17 = inttoptr i64 %15 to ptr
  %18 = call ptr @wcscpy(ptr %17, ptr %16)
  call void @printWLine(ptr %17)
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %1, %19
  br i1 %20, label %dec_label_pc_5bf4b, label %dec_label_pc_5bf46

dec_label_pc_5bf46:                               ; preds = %dec_label_pc_5beda
  call void @__stack_chk_fail()
  br label %dec_label_pc_5bf4b

dec_label_pc_5bf4b:                               ; preds = %dec_label_pc_5bf46, %dec_label_pc_5beda
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

