@global_var_1000 = external global ptr
@global_var_b9828 = external constant [43 x i32]
@global_var_fff = external global i32
@global_var_ef05c = external local_unnamed_addr global i32
@global_var_c074c = external constant [5 x i32]

define void @anon0() local_unnamed_addr {
dec_label_pc_5dba6:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-40 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ef05c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  %spec.store.select = select i1 %3, ptr null, ptr @global_var_b9828
  store ptr %spec.store.select, ptr %stack_var_-40, align 8
  br i1 %3, label %dec_label_pc_5dcae, label %dec_label_pc_5dbee

dec_label_pc_5dbee:                               ; preds = %dec_label_pc_5dba6
  %4 = ptrtoint ptr %stack_var_-40 to i64
  %5 = call i32 @wcslen(ptr %spec.store.select)
  %6 = sext i32 %5 to i64
  %7 = mul i64 %6, 4
  %8 = add nsw i64 %7, 27
  %9 = udiv i64 %8, 16
  %10 = mul i64 %9, 16
  %11 = and i64 %10, -4096
  %12 = sub i64 %4, %11
  store i64 %4, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_5dc3b

dec_label_pc_5dc3b:                               ; preds = %dec_label_pc_5dc3b, %dec_label_pc_5dbee
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %13 = icmp eq i64 %rsp.0.reload, %12
  %14 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %14, ptr %rsp.0.reg2mem, align 8
  br i1 %13, label %dec_label_pc_5dc52, label %dec_label_pc_5dc3b

dec_label_pc_5dc52:                               ; preds = %dec_label_pc_5dc3b
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %15 = and i64 %10, %constexpr
  %16 = sub nsw i64 15, %15
  %17 = add i64 %16, %12
  %18 = and i64 %17, -16
  %19 = load ptr, ptr %stack_var_-40, align 8
  %20 = inttoptr i64 %18 to ptr
  %21 = call ptr @wcscpy(ptr %20, ptr %19)
  call void @printWLine(ptr %20)
  br label %dec_label_pc_5dcae

dec_label_pc_5dcae:                               ; preds = %dec_label_pc_5dc52, %dec_label_pc_5dba6
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %0, %22
  br i1 %23, label %dec_label_pc_5dcc3, label %dec_label_pc_5dcbe

dec_label_pc_5dcbe:                               ; preds = %dec_label_pc_5dcae
  call void @__stack_chk_fail()
  br label %dec_label_pc_5dcc3

dec_label_pc_5dcc3:                               ; preds = %dec_label_pc_5dcbe, %dec_label_pc_5dcae
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

