@global_var_fff = external global ptr
@global_var_bb9a8 = external constant [4 x i8]
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3f068:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %dataBadBuffer_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataBadBuffer_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_3f0b3

dec_label_pc_3f0b3:                               ; preds = %dec_label_pc_3f0b3, %dec_label_pc_3f068
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_3f0ca, label %dec_label_pc_3f0b3

dec_label_pc_3f0ca:                               ; preds = %dec_label_pc_3f0b3
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 208
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_3f137

dec_label_pc_3f137:                               ; preds = %dec_label_pc_3f137, %dec_label_pc_3f0ca
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %6 = icmp eq i64 %rsp.1.reload, %4
  %7 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %7, ptr %rsp.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_3f14e, label %dec_label_pc_3f137

dec_label_pc_3f14e:                               ; preds = %dec_label_pc_3f137
  %8 = and i64 %5, -16
  %9 = bitcast ptr %dataBadBuffer_-40 to ptr
  store i64 %8, ptr %9, align 8
  %10 = bitcast ptr %dataBadBuffer_-40 to ptr
  call void @anon1(ptr nonnull %10)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %1, %11
  br i1 %12, label %dec_label_pc_3f1b4, label %dec_label_pc_3f1af

dec_label_pc_3f1af:                               ; preds = %dec_label_pc_3f14e
  call void @__stack_chk_fail()
  br label %dec_label_pc_3f1b4

dec_label_pc_3f1b4:                               ; preds = %dec_label_pc_3f1af, %dec_label_pc_3f14e
  ret void
}

define void @anon1(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_3f319:
  %storemerge2.reg2mem = alloca ptr, align 8
  %rdi = alloca i64, align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %2, i64 0, i64 50)
  %3 = ptrtoint ptr %dataVoidPtr to i64
  %4 = add i64 %0, -416
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_3f381

dec_label_pc_3f381:                               ; preds = %dec_label_pc_3f319, %dec_label_pc_3f381
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %5 = ptrtoint ptr %storemerge2.reload to i64
  %6 = mul i64 %5, 4
  %7 = add i64 %6, %3
  %8 = add i64 %4, %6
  %9 = inttoptr i64 %8 to ptr
  %10 = load i32, ptr %9, align 4
  %11 = inttoptr i64 %7 to ptr
  store i32 %10, ptr %11, align 4
  %12 = add i64 %5, 1
  %13 = inttoptr i64 %12 to ptr
  %14 = icmp ugt ptr %13, inttoptr (i64 99 to ptr)
  store ptr %13, ptr %storemerge2.reg2mem, align 8
  br i1 %14, label %dec_label_pc_3f3bc, label %dec_label_pc_3f381

dec_label_pc_3f3bc:                               ; preds = %dec_label_pc_3f381
  %15 = bitcast ptr %rdi to ptr
  %16 = load i32, ptr %15, align 8
  call void @printIntLine(i32 %16)
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %1, %17
  br i1 %18, label %dec_label_pc_3f3e1, label %dec_label_pc_3f3dc

dec_label_pc_3f3dc:                               ; preds = %dec_label_pc_3f3bc
  call void @__stack_chk_fail()
  br label %dec_label_pc_3f3e1

dec_label_pc_3f3e1:                               ; preds = %dec_label_pc_3f3dc, %dec_label_pc_3f3bc
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

