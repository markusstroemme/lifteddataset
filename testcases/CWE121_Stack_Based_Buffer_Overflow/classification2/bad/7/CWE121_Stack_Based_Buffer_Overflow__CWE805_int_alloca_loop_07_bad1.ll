@global_var_fff = external global ptr
@global_var_bb9a8 = external constant [4 x i8]
@global_var_1000 = external global i32
@global_var_e604c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_38746:
  %storemerge2.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-456 = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-456 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_38794

dec_label_pc_38794:                               ; preds = %dec_label_pc_38794, %dec_label_pc_38746
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_387ab, label %dec_label_pc_38794

dec_label_pc_387ab:                               ; preds = %dec_label_pc_38794
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 208
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_3881b

dec_label_pc_3881b:                               ; preds = %dec_label_pc_3881b, %dec_label_pc_387ab
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %4
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_38832, label %dec_label_pc_3881b

dec_label_pc_38832:                               ; preds = %dec_label_pc_3881b
  %8 = load i32, ptr @global_var_e604c, align 4
  %9 = icmp eq i32 %8, 5
  %10 = icmp eq i1 %9, false
  br i1 %10, label %dec_label_pc_3888b, label %dec_label_pc_3887d

dec_label_pc_3887d:                               ; preds = %dec_label_pc_38832
  %11 = and i64 %5, -16
  %12 = bitcast ptr %stack_var_-456 to ptr
  store i64 %11, ptr %12, align 8
  br label %dec_label_pc_3888b

dec_label_pc_3888b:                               ; preds = %dec_label_pc_3887d, %dec_label_pc_38832
  %13 = ptrtoint ptr %stack_var_-8 to i64
  %14 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %14, i64 0, i64 50)
  %15 = add i64 %13, -416
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_388af

dec_label_pc_388af:                               ; preds = %dec_label_pc_3888b, %dec_label_pc_388af
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %16 = ptrtoint ptr %storemerge2.reload to i64
  %17 = mul i64 %16, 4
  %18 = load ptr, ptr %stack_var_-456, align 8
  %19 = ptrtoint ptr %18 to i64
  %20 = add i64 %17, %19
  %21 = add i64 %15, %17
  %22 = inttoptr i64 %21 to ptr
  %23 = load i32, ptr %22, align 4
  %24 = inttoptr i64 %20 to ptr
  store i32 %23, ptr %24, align 4
  %25 = add i64 %16, 1
  %26 = inttoptr i64 %25 to ptr
  %27 = icmp ugt ptr %26, inttoptr (i64 99 to ptr)
  store ptr %26, ptr %storemerge2.reg2mem, align 8
  br i1 %27, label %dec_label_pc_388ea, label %dec_label_pc_388af

dec_label_pc_388ea:                               ; preds = %dec_label_pc_388af
  %28 = load ptr, ptr %stack_var_-456, align 8
  %29 = load i32, ptr %28, align 4
  call void @printIntLine(i32 %29)
  %30 = call i64 @__readfsqword(i64 40)
  %31 = icmp eq i64 %1, %30
  br i1 %31, label %dec_label_pc_3890f, label %dec_label_pc_3890a

dec_label_pc_3890a:                               ; preds = %dec_label_pc_388ea
  call void @__stack_chk_fail()
  br label %dec_label_pc_3890f

dec_label_pc_3890f:                               ; preds = %dec_label_pc_3890a, %dec_label_pc_388ea
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9cb76:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bb9a8, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

