@global_var_fff = external global ptr
@global_var_bb9a8 = external constant [4 x i8]
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3daaf:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %dataGoodBuffer_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataGoodBuffer_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_3dafa

dec_label_pc_3dafa:                               ; preds = %dec_label_pc_3dafa, %dec_label_pc_3daaf
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_3db11, label %dec_label_pc_3dafa

dec_label_pc_3db11:                               ; preds = %dec_label_pc_3dafa
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 208
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  %7 = inttoptr i64 %6 to ptr
  store ptr %7, ptr %dataGoodBuffer_-40, align 8
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_3db7e

dec_label_pc_3db7e:                               ; preds = %dec_label_pc_3db7e, %dec_label_pc_3db11
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %8 = icmp eq i64 %rsp.1.reload, %4
  %9 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %9, ptr %rsp.1.reg2mem, align 8
  br i1 %8, label %dec_label_pc_3db95, label %dec_label_pc_3db7e

dec_label_pc_3db95:                               ; preds = %dec_label_pc_3db7e
  call void @anon1(ptr %7)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %1, %10
  br i1 %11, label %dec_label_pc_3dbfb, label %dec_label_pc_3dbf6

dec_label_pc_3dbf6:                               ; preds = %dec_label_pc_3db95
  call void @__stack_chk_fail()
  br label %dec_label_pc_3dbfb

dec_label_pc_3dbfb:                               ; preds = %dec_label_pc_3dbf6, %dec_label_pc_3db95
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_3dd60:
  %storemerge2.reg2mem = alloca i64, align 8
  %rdi = alloca i64, align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %2, i64 0, i64 50)
  %3 = ptrtoint ptr %data to i64
  %4 = add i64 %0, -416
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_3dda9

dec_label_pc_3dda9:                               ; preds = %dec_label_pc_3dda9, %dec_label_pc_3dd60
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %5 = mul i64 %storemerge2.reload, 4
  %6 = add i64 %5, %3
  %7 = add i64 %4, %5
  %8 = inttoptr i64 %7 to ptr
  %9 = load i32, ptr %8, align 4
  %10 = inttoptr i64 %6 to ptr
  store i32 %9, ptr %10, align 4
  %11 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %11, 100
  store i64 %11, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_3dde4, label %dec_label_pc_3dda9

dec_label_pc_3dde4:                               ; preds = %dec_label_pc_3dda9
  %12 = bitcast ptr %rdi to ptr
  %13 = load i32, ptr %12, align 8
  call void @printIntLine(i32 %13)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %1, %14
  br i1 %15, label %dec_label_pc_3de09, label %dec_label_pc_3de04

dec_label_pc_3de04:                               ; preds = %dec_label_pc_3dde4
  call void @__stack_chk_fail()
  br label %dec_label_pc_3de09

dec_label_pc_3de09:                               ; preds = %dec_label_pc_3de04, %dec_label_pc_3dde4
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

