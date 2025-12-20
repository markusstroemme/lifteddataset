@global_var_1000 = external global ptr
@global_var_b9b10 = external constant [43 x i32]
@global_var_ef080 = external local_unnamed_addr global i32
@global_var_fff = external global i32
@global_var_c074c = external constant [5 x i32]

define void @anon0() local_unnamed_addr {
dec_label_pc_5ed89:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-40 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ef080, align 4
  %2 = icmp eq i32 %1, 0
  %spec.store.select = select i1 %2, ptr null, ptr @global_var_b9b10
  store ptr %spec.store.select, ptr %stack_var_-40, align 8
  br i1 %2, label %dec_label_pc_5ee8f, label %dec_label_pc_5edcf

dec_label_pc_5edcf:                               ; preds = %dec_label_pc_5ed89
  %3 = ptrtoint ptr %stack_var_-40 to i64
  %4 = call i32 @wcslen(ptr %spec.store.select)
  %5 = sext i32 %4 to i64
  %6 = mul i64 %5, 4
  %7 = add nsw i64 %6, 27
  %8 = udiv i64 %7, 16
  %9 = mul i64 %8, 16
  %10 = and i64 %9, -4096
  %11 = sub i64 %3, %10
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_5ee1c

dec_label_pc_5ee1c:                               ; preds = %dec_label_pc_5ee1c, %dec_label_pc_5edcf
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %12 = icmp eq i64 %rsp.0.reload, %11
  %13 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %13, ptr %rsp.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_5ee33, label %dec_label_pc_5ee1c

dec_label_pc_5ee33:                               ; preds = %dec_label_pc_5ee1c
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %14 = and i64 %9, %constexpr
  %15 = sub nsw i64 15, %14
  %16 = add i64 %15, %11
  %17 = and i64 %16, -16
  %18 = load ptr, ptr %stack_var_-40, align 8
  %19 = inttoptr i64 %17 to ptr
  %20 = call ptr @wcscpy(ptr %19, ptr %18)
  call void @printWLine(ptr %19)
  br label %dec_label_pc_5ee8f

dec_label_pc_5ee8f:                               ; preds = %dec_label_pc_5ee33, %dec_label_pc_5ed89
  %21 = call i64 @__readfsqword(i64 40)
  %22 = icmp eq i64 %0, %21
  br i1 %22, label %dec_label_pc_5eea4, label %dec_label_pc_5ee9f

dec_label_pc_5ee9f:                               ; preds = %dec_label_pc_5ee8f
  call void @__stack_chk_fail()
  br label %dec_label_pc_5eea4

dec_label_pc_5eea4:                               ; preds = %dec_label_pc_5ee9f, %dec_label_pc_5ee8f
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

