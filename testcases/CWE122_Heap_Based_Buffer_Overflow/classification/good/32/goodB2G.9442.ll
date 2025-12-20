@global_var_b8af0 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_5c997:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv7.reg2mem = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @rand()
  %2 = urem i32 %1, 2
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @rand()
  %5 = mul i32 %4, 1073741824
  %6 = call i32 @rand()
  %7 = mul i32 %6, 32768
  %8 = xor i32 %7, %5
  %9 = call i32 @rand()
  %10 = xor i32 %8, %9
  %11 = sext i1 %3 to i32
  %storemerge3.in = xor i32 %10, %11
  %12 = call ptr @malloc(i32 40)
  %13 = ptrtoint ptr %12 to i64
  %14 = icmp eq ptr %12, null
  %15 = icmp eq i1 %14, false
  store i64 0, ptr %indvars.iv7.reg2mem, align 8
  br i1 %15, label %dec_label_pc_5ca56, label %dec_label_pc_5ca43

dec_label_pc_5ca43:                               ; preds = %dec_label_pc_5c997
  call void @exit(i32 -1)
  unreachable

dec_label_pc_5ca56:                               ; preds = %dec_label_pc_5c997, %dec_label_pc_5ca56
  %indvars.iv7.reload = load i64, ptr %indvars.iv7.reg2mem, align 8
  %16 = mul i64 %indvars.iv7.reload, 4
  %17 = add i64 %16, %13
  %18 = inttoptr i64 %17 to ptr
  store i32 0, ptr %18, align 4
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7.reload, 1
  %exitcond9 = icmp eq i64 %indvars.iv.next8, 10
  store i64 %indvars.iv.next8, ptr %indvars.iv7.reg2mem, align 8
  br i1 %exitcond9, label %dec_label_pc_5ca7a, label %dec_label_pc_5ca56

dec_label_pc_5ca7a:                               ; preds = %dec_label_pc_5ca56
  %19 = icmp ugt i32 %storemerge3.in, 9
  br i1 %19, label %dec_label_pc_5cad2, label %dec_label_pc_5ca86

dec_label_pc_5ca86:                               ; preds = %dec_label_pc_5ca7a
  %20 = sext i32 %storemerge3.in to i64
  %21 = mul i64 %20, 4
  %22 = add i64 %21, %13
  %23 = inttoptr i64 %22 to ptr
  store i32 1, ptr %23, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_5caa9

dec_label_pc_5caa9:                               ; preds = %dec_label_pc_5caa9, %dec_label_pc_5ca86
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %24 = mul i64 %indvars.iv.reload, 4
  %25 = add i64 %24, %13
  %26 = inttoptr i64 %25 to ptr
  %27 = load i32, ptr %26, align 4
  call void @printIntLine(i32 %27)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_5cae1, label %dec_label_pc_5caa9

dec_label_pc_5cad2:                               ; preds = %dec_label_pc_5ca7a
  call void @printLine(ptr @global_var_b8af0)
  br label %dec_label_pc_5cae1

dec_label_pc_5cae1:                               ; preds = %dec_label_pc_5caa9, %dec_label_pc_5cad2
  call void @free(ptr %12)
  %28 = call i64 @__readfsqword(i64 40)
  %29 = icmp eq i64 %0, %28
  br i1 %29, label %dec_label_pc_5cb02, label %dec_label_pc_5cafd

dec_label_pc_5cafd:                               ; preds = %dec_label_pc_5cae1
  call void @__stack_chk_fail()
  br label %dec_label_pc_5cb02

dec_label_pc_5cb02:                               ; preds = %dec_label_pc_5cafd, %dec_label_pc_5cae1
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_9fe8c:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9feaf, label %dec_label_pc_9fea3

dec_label_pc_9fea3:                               ; preds = %dec_label_pc_9fe8c
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_9feaf

dec_label_pc_9feaf:                               ; preds = %dec_label_pc_9fea3, %dec_label_pc_9fe8c
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9fee7:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bd318, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

