@global_var_fff = external global ptr
@global_var_bb9a8 = external constant [4 x i8]
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3f8cc:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %dataBadBuffer_-88 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBadBuffer_-88 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_3f917

dec_label_pc_3f917:                               ; preds = %dec_label_pc_3f917, %dec_label_pc_3f8cc
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_3f92e, label %dec_label_pc_3f917

dec_label_pc_3f92e:                               ; preds = %dec_label_pc_3f917
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 208
  %4 = sub i64 %0, %constexpr1
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_3f99b

dec_label_pc_3f99b:                               ; preds = %dec_label_pc_3f99b, %dec_label_pc_3f92e
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %5 = icmp eq i64 %rsp.1.reload, %4
  %6 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %6, ptr %rsp.1.reg2mem, align 8
  br i1 %5, label %dec_label_pc_3f9b2, label %dec_label_pc_3f99b

dec_label_pc_3f9b2:                               ; preds = %dec_label_pc_3f99b
  %7 = bitcast ptr %stack_var_-56 to ptr
  call void @anon1(ptr nonnull %7)
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %1, %8
  br i1 %9, label %dec_label_pc_3fa20, label %dec_label_pc_3fa1b

dec_label_pc_3fa1b:                               ; preds = %dec_label_pc_3f9b2
  call void @__stack_chk_fail()
  br label %dec_label_pc_3fa20

dec_label_pc_3fa20:                               ; preds = %dec_label_pc_3fa1b, %dec_label_pc_3f9b2
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_3fb8d:
  %storemerge2.reg2mem = alloca ptr, align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = ptrtoint ptr %dataArray to i64
  %3 = add i64 %2, 16
  %4 = inttoptr i64 %3 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %6, i64 0, i64 50)
  %7 = add i64 %0, -416
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_3fbe8

dec_label_pc_3fbe8:                               ; preds = %dec_label_pc_3fb8d, %dec_label_pc_3fbe8
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %8 = ptrtoint ptr %storemerge2.reload to i64
  %9 = mul i64 %8, 4
  %10 = add i64 %9, %5
  %11 = add i64 %7, %9
  %12 = inttoptr i64 %11 to ptr
  %13 = load i32, ptr %12, align 4
  %14 = inttoptr i64 %10 to ptr
  store i32 %13, ptr %14, align 4
  %15 = add i64 %8, 1
  %16 = inttoptr i64 %15 to ptr
  %17 = icmp ugt ptr %16, inttoptr (i64 99 to ptr)
  store ptr %16, ptr %storemerge2.reg2mem, align 8
  br i1 %17, label %dec_label_pc_3fc23, label %dec_label_pc_3fbe8

dec_label_pc_3fc23:                               ; preds = %dec_label_pc_3fbe8
  %18 = inttoptr i64 %5 to ptr
  %19 = load i32, ptr %18, align 4
  call void @printIntLine(i32 %19)
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %1, %20
  br i1 %21, label %dec_label_pc_3fc48, label %dec_label_pc_3fc43

dec_label_pc_3fc43:                               ; preds = %dec_label_pc_3fc23
  call void @__stack_chk_fail()
  br label %dec_label_pc_3fc48

dec_label_pc_3fc48:                               ; preds = %dec_label_pc_3fc43, %dec_label_pc_3fc23
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

