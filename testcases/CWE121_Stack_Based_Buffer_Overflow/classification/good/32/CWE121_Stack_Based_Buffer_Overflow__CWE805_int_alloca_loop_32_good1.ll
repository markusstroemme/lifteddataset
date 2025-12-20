@global_var_fff = external global ptr
@global_var_bb9a8 = external constant [4 x i8]
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3c871:
  %storemerge2.reg2mem = alloca ptr, align 8
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-488 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-488 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_3c8db

dec_label_pc_3c8db:                               ; preds = %dec_label_pc_3c8db, %dec_label_pc_3c871
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_3c8f2, label %dec_label_pc_3c8db

dec_label_pc_3c8f2:                               ; preds = %dec_label_pc_3c8db
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 208
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_3c962

dec_label_pc_3c962:                               ; preds = %dec_label_pc_3c962, %dec_label_pc_3c8f2
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_3c979, label %dec_label_pc_3c962

dec_label_pc_3c979:                               ; preds = %dec_label_pc_3c962
  %7 = ptrtoint ptr %stack_var_-8 to i64
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 416
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %8 = add i64 %4, %constexpr5
  %9 = and i64 %8, -16
  store i64 %9, ptr %stack_var_-488, align 8
  %10 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %10, i64 0, i64 50)
  %11 = add i64 %7, -416
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_3ca1e

dec_label_pc_3ca1e:                               ; preds = %dec_label_pc_3c979, %dec_label_pc_3ca1e
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %12 = ptrtoint ptr %storemerge2.reload to i64
  %13 = mul i64 %12, 4
  %14 = add i64 %13, %9
  %15 = add i64 %11, %13
  %16 = inttoptr i64 %15 to ptr
  %17 = load i32, ptr %16, align 4
  %18 = inttoptr i64 %14 to ptr
  store i32 %17, ptr %18, align 4
  %19 = add i64 %12, 1
  %20 = inttoptr i64 %19 to ptr
  %21 = icmp ugt ptr %20, inttoptr (i64 99 to ptr)
  store ptr %20, ptr %storemerge2.reg2mem, align 8
  br i1 %21, label %dec_label_pc_3ca59, label %dec_label_pc_3ca1e

dec_label_pc_3ca59:                               ; preds = %dec_label_pc_3ca1e
  %22 = inttoptr i64 %9 to ptr
  %23 = load i32, ptr %22, align 16
  call void @printIntLine(i32 %23)
  %24 = call i64 @__readfsqword(i64 40)
  %25 = icmp eq i64 %1, %24
  br i1 %25, label %dec_label_pc_3ca7e, label %dec_label_pc_3ca79

dec_label_pc_3ca79:                               ; preds = %dec_label_pc_3ca59
  call void @__stack_chk_fail()
  br label %dec_label_pc_3ca7e

dec_label_pc_3ca7e:                               ; preds = %dec_label_pc_3ca79, %dec_label_pc_3ca59
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

