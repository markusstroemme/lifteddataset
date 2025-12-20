@global_var_1000 = external global ptr
@global_var_bafb8 = external constant [43 x i32]
@global_var_fff = external global i32
@global_var_c074c = external constant [5 x i32]

define void @anon1() local_unnamed_addr {
dec_label_pc_64ffa:
  %stack_var_-24 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store ptr @global_var_bafb8, ptr %stack_var_-24, align 8
  %1 = bitcast ptr %stack_var_-24 to ptr
  call void @anon0(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_65049, label %dec_label_pc_65044

dec_label_pc_65044:                               ; preds = %dec_label_pc_64ffa
  call void @__stack_chk_fail()
  br label %dec_label_pc_65049

dec_label_pc_65049:                               ; preds = %dec_label_pc_65044, %dec_label_pc_64ffa
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_65268:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-56 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = bitcast ptr %dataPtr to ptr
  %3 = call i32 @wcslen(ptr %2)
  %4 = sext i32 %3 to i64
  %5 = mul i64 %4, 4
  %6 = add nsw i64 %5, 27
  %7 = udiv i64 %6, 16
  %8 = mul i64 %7, 16
  %9 = and i64 %8, -4096
  %10 = sub i64 %0, %9
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_652df

dec_label_pc_652df:                               ; preds = %dec_label_pc_652df, %dec_label_pc_65268
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %11 = icmp eq i64 %rsp.0.reload, %10
  %12 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %12, ptr %rsp.0.reg2mem, align 8
  br i1 %11, label %dec_label_pc_652f6, label %dec_label_pc_652df

dec_label_pc_652f6:                               ; preds = %dec_label_pc_652df
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %13 = and i64 %8, %constexpr
  %14 = sub nsw i64 15, %13
  %15 = add i64 %14, %10
  %16 = and i64 %15, -16
  %17 = inttoptr i64 %16 to ptr
  %18 = call ptr @wcscpy(ptr %17, ptr %2)
  call void @printWLine(ptr %17)
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %1, %19
  br i1 %20, label %dec_label_pc_65367, label %dec_label_pc_65362

dec_label_pc_65362:                               ; preds = %dec_label_pc_652f6
  call void @__stack_chk_fail()
  br label %dec_label_pc_65367

dec_label_pc_65367:                               ; preds = %dec_label_pc_65362, %dec_label_pc_652f6
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

