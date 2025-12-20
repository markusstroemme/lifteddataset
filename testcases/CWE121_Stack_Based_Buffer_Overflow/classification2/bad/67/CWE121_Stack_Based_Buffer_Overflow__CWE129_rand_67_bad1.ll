@global_var_b8f60 = external constant [32 x i8]
@global_var_c0760 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_47ca5:
  %0 = call i32 @rand()
  %1 = urem i32 %0, 2
  %2 = icmp eq i32 %1, 0
  %3 = call i32 @rand()
  %4 = mul i32 %3, 1073741824
  %5 = call i32 @rand()
  %6 = mul i32 %5, 32768
  %7 = xor i32 %6, %4
  %8 = call i32 @rand()
  %9 = xor i32 %7, %8
  %10 = sext i1 %2 to i32
  %storemerge.in = xor i32 %9, %10
  %storemerge = zext i32 %storemerge.in to i64
  call void @anon1(i64 %storemerge)
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_47dd9:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = trunc i64 %myStruct to i32
  %1 = call i64 @__readfsqword(i64 40)
  %2 = icmp slt i32 %0, 0
  br i1 %2, label %dec_label_pc_47e5d, label %dec_label_pc_47e2b

dec_label_pc_47e2b:                               ; preds = %dec_label_pc_47dd9
  %3 = ptrtoint ptr %stack_var_-8 to i64
  %sext = mul i64 %myStruct, 4294967296
  %4 = ashr exact i64 %sext, 30
  %5 = add i64 %3, -48
  %6 = add i64 %5, %4
  %7 = inttoptr i64 %6 to ptr
  store i32 1, ptr %7, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_47e41

dec_label_pc_47e41:                               ; preds = %dec_label_pc_47e41, %dec_label_pc_47e2b
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %8 = mul i64 %indvars.iv.reload, 4
  %9 = add i64 %8, %5
  %10 = inttoptr i64 %9 to ptr
  %11 = load i32, ptr %10, align 4
  call void @printIntLine(i32 %11)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_47e6c, label %dec_label_pc_47e41

dec_label_pc_47e5d:                               ; preds = %dec_label_pc_47dd9
  call void @printLine(ptr @global_var_b8f60)
  br label %dec_label_pc_47e6c

dec_label_pc_47e6c:                               ; preds = %dec_label_pc_47e41, %dec_label_pc_47e5d
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %1, %12
  br i1 %13, label %dec_label_pc_47e81, label %dec_label_pc_47e7c

dec_label_pc_47e7c:                               ; preds = %dec_label_pc_47e6c
  call void @__stack_chk_fail()
  br label %dec_label_pc_47e81

dec_label_pc_47e81:                               ; preds = %dec_label_pc_47e7c, %dec_label_pc_47e6c
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06bb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a06de, label %dec_label_pc_a06d2

dec_label_pc_a06d2:                               ; preds = %dec_label_pc_a06bb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_a06de

dec_label_pc_a06de:                               ; preds = %dec_label_pc_a06d2, %dec_label_pc_a06bb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_a0716:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_c0760, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

