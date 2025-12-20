@global_var_bb9a8 = external constant [4 x i8]

define void @anon2() local_unnamed_addr {
dec_label_pc_559dd:
  %dataBadBuffer_-432 = alloca [50 x i32], align 8
  %stack_var_-424 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-424 to i64
  %2 = trunc i64 %1 to i32
  %3 = insertvalue [50 x i32] undef, i32 %2, 0
  store [50 x i32] %3, ptr %dataBadBuffer_-432, align 8
  %4 = bitcast ptr %dataBadBuffer_-432 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = inttoptr i64 %5 to ptr
  call void @anon0(ptr %6)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  br i1 %8, label %dec_label_pc_55a2d, label %dec_label_pc_55a28

dec_label_pc_55a28:                               ; preds = %dec_label_pc_559dd
  call void @__stack_chk_fail()
  br label %dec_label_pc_55a2d

dec_label_pc_55a2d:                               ; preds = %dec_label_pc_55a28, %dec_label_pc_559dd
  ret void
}

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_55a63:
  call void @anon1(ptr %data)
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_55b2d:
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
  br label %dec_label_pc_55b76

dec_label_pc_55b76:                               ; preds = %dec_label_pc_55b76, %dec_label_pc_55b2d
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
  br i1 %exitcond, label %dec_label_pc_55bb1, label %dec_label_pc_55b76

dec_label_pc_55bb1:                               ; preds = %dec_label_pc_55b76
  %12 = bitcast ptr %rdi to ptr
  %13 = load i32, ptr %12, align 8
  call void @printIntLine(i32 %13)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %1, %14
  br i1 %15, label %dec_label_pc_55bd6, label %dec_label_pc_55bd1

dec_label_pc_55bd1:                               ; preds = %dec_label_pc_55bb1
  call void @__stack_chk_fail()
  br label %dec_label_pc_55bd6

dec_label_pc_55bd6:                               ; preds = %dec_label_pc_55bd1, %dec_label_pc_55bb1
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

