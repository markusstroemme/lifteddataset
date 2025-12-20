@global_var_bb9b5 = external constant [5 x i8]

define void @anon3() local_unnamed_addr {
dec_label_pc_2db8e:
  %dataBadBuffer_-832 = alloca [50 x i64], align 8
  %stack_var_-824 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-824 to i64
  %2 = insertvalue [50 x i64] undef, i64 %1, 0
  store [50 x i64] %2, ptr %dataBadBuffer_-832, align 8
  %3 = getelementptr inbounds [50 x i64], ptr %dataBadBuffer_-832, i64 0, i64 0
  %4 = load i64, ptr %3, align 8
  %5 = inttoptr i64 %4 to ptr
  call void @anon0(ptr %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_2dbde, label %dec_label_pc_2dbd9

dec_label_pc_2dbd9:                               ; preds = %dec_label_pc_2db8e
  call void @__stack_chk_fail()
  br label %dec_label_pc_2dbde

dec_label_pc_2dbde:                               ; preds = %dec_label_pc_2dbd9, %dec_label_pc_2db8e
  ret void
}

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_2dc14:
  call void @anon1(ptr %data)
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_2dc52:
  call void @anon2(ptr %data)
  ret void
}

define void @anon2(ptr %data) local_unnamed_addr {
dec_label_pc_2dd20:
  %0 = alloca i1, align 1
  %storemerge1.reg2mem = alloca i64, align 8
  %1 = load i1, ptr %0, align 1
  %2 = ptrtoint ptr %data to i64
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %3 = ptrtoint ptr %stack_var_-8 to i64
  %4 = call i64 @__readfsqword(i64 40)
  %5 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %5, i64 0, i64 100)
  %6 = add i64 %3, -816
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_2dd69

dec_label_pc_2dd69:                               ; preds = %dec_label_pc_2dd69, %dec_label_pc_2dd20
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %7 = mul i64 %storemerge1.reload, 8
  %8 = add i64 %7, %2
  %9 = add i64 %6, %7
  %10 = inttoptr i64 %9 to ptr
  %11 = load i64, ptr %10, align 8
  %12 = inttoptr i64 %8 to ptr
  store i64 %11, ptr %12, align 8
  %13 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %13, 100
  store i64 %13, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2dda6, label %dec_label_pc_2dd69

dec_label_pc_2dda6:                               ; preds = %dec_label_pc_2dd69
  %14 = select i1 %1, i64 -800, i64 800
  %15 = ptrtoint ptr %stack_var_-824 to i64
  %16 = add i64 %14, %15
  call void @printLongLongLine(i64 %16)
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %4, %17
  br i1 %18, label %dec_label_pc_2ddcd, label %dec_label_pc_2ddc8

dec_label_pc_2ddc8:                               ; preds = %dec_label_pc_2dda6
  call void @__stack_chk_fail()
  br label %dec_label_pc_2ddcd

dec_label_pc_2ddcd:                               ; preds = %dec_label_pc_2ddc8, %dec_label_pc_2dda6
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_9cc39:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bb9b5, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

