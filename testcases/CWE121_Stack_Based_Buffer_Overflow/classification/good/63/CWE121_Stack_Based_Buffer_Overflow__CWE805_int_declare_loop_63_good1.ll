@global_var_bb9a8 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_5617e:
  %dataBadBuffer_-432 = alloca [50 x i32], align 4
  %stack_var_-424 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-424 to i64
  %2 = trunc i64 %1 to i32
  %3 = insertvalue [50 x i32] undef, i32 %2, 0
  store [50 x i32] %3, ptr %dataBadBuffer_-432, align 4
  %4 = bitcast ptr %dataBadBuffer_-432 to ptr
  call void @anon0(ptr nonnull %4)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_561ce, label %dec_label_pc_561c9

dec_label_pc_561c9:                               ; preds = %dec_label_pc_5617e
  call void @__stack_chk_fail()
  br label %dec_label_pc_561ce

dec_label_pc_561ce:                               ; preds = %dec_label_pc_561c9, %dec_label_pc_5617e
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_562a1:
  %storemerge2.reg2mem = alloca ptr, align 8
  %rdi = alloca i64, align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %2, i64 0, i64 50)
  %3 = ptrtoint ptr %dataPtr to i64
  %4 = add i64 %0, -416
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_562fb

dec_label_pc_562fb:                               ; preds = %dec_label_pc_562a1, %dec_label_pc_562fb
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
  br i1 %14, label %dec_label_pc_56336, label %dec_label_pc_562fb

dec_label_pc_56336:                               ; preds = %dec_label_pc_562fb
  %15 = bitcast ptr %rdi to ptr
  %16 = load i32, ptr %15, align 8
  call void @printIntLine(i32 %16)
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %1, %17
  br i1 %18, label %dec_label_pc_5635b, label %dec_label_pc_56356

dec_label_pc_56356:                               ; preds = %dec_label_pc_56336
  call void @__stack_chk_fail()
  br label %dec_label_pc_5635b

dec_label_pc_5635b:                               ; preds = %dec_label_pc_56356, %dec_label_pc_56336
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

