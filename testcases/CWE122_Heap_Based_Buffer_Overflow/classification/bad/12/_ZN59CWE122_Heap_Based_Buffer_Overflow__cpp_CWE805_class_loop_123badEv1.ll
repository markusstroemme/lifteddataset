@global_var_320 = external constant [20 x i8]
@global_var_531bc = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_37d92:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge3.reg2mem = alloca i64, align 8
  %storemerge14.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = call i32 @globalReturnsTrueOrFalse()
  %4 = icmp eq i32 %3, 0
  %5 = icmp eq i1 %4, false
  %6 = icmp eq i1 %5, false
  br i1 %6, label %dec_label_pc_37ddc, label %dec_label_pc_37dc9

dec_label_pc_37dc9:                               ; preds = %dec_label_pc_37d92
  %7 = call i64 @_Znam(i64 400)
  store i64 %7, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_37ded

dec_label_pc_37ddc:                               ; preds = %dec_label_pc_37d92
  %8 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 %8, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_37ded

dec_label_pc_37ded:                               ; preds = %dec_label_pc_37ddc, %dec_label_pc_37dc9
  %9 = ptrtoint ptr %stack_var_-8 to i64
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %10 = add i64 %9, -816
  %11 = add i64 %9, -812
  store i64 0, ptr %storemerge14.reg2mem, align 8
  br label %dec_label_pc_37dfa

dec_label_pc_37dfa:                               ; preds = %dec_label_pc_37dfa, %dec_label_pc_37ded
  %storemerge14.reload = load i64, ptr %storemerge14.reg2mem, align 8
  %12 = mul i64 %storemerge14.reload, 8
  %13 = add i64 %12, %10
  %14 = inttoptr i64 %13 to ptr
  store i32 0, ptr %14, align 8
  %15 = add i64 %11, %12
  %16 = inttoptr i64 %15 to ptr
  store i32 0, ptr %16, align 4
  %17 = add nuw nsw i64 %storemerge14.reload, 1
  %exitcond5 = icmp eq i64 %17, 100
  store i64 %17, ptr %storemerge14.reg2mem, align 8
  store i64 0, ptr %storemerge3.reg2mem, align 8
  br i1 %exitcond5, label %dec_label_pc_37e3d, label %dec_label_pc_37dfa

dec_label_pc_37e3d:                               ; preds = %dec_label_pc_37dfa, %dec_label_pc_37e3d
  %storemerge3.reload = load i64, ptr %storemerge3.reg2mem, align 8
  %18 = mul i64 %storemerge3.reload, 8
  %19 = add i64 %18, %storemerge2.reload
  %20 = add i64 %18, %10
  %21 = inttoptr i64 %20 to ptr
  %22 = load i64, ptr %21, align 8
  %23 = inttoptr i64 %19 to ptr
  store i64 %22, ptr %23, align 8
  %24 = add nuw nsw i64 %storemerge3.reload, 1
  %exitcond = icmp eq i64 %24, 100
  store i64 %24, ptr %storemerge3.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_37e7a, label %dec_label_pc_37e3d

dec_label_pc_37e7a:                               ; preds = %dec_label_pc_37e3d
  %25 = inttoptr i64 %storemerge2.reload to ptr
  %26 = load i32, ptr %25, align 4
  call void @printIntLine(i32 %26)
  %27 = icmp eq i64 %storemerge2.reload, 0
  br i1 %27, label %dec_label_pc_37ea3, label %dec_label_pc_37e94

dec_label_pc_37e94:                               ; preds = %dec_label_pc_37e7a
  %28 = inttoptr i64 %storemerge2.reload to ptr
  %29 = and i64 %1, 4294967295
  %30 = inttoptr i64 %29 to ptr
  call void @_ZdaPv(ptr %28, ptr %30)
  br label %dec_label_pc_37ea3

dec_label_pc_37ea3:                               ; preds = %dec_label_pc_37e94, %dec_label_pc_37e7a
  %31 = call i64 @__readfsqword(i64 40)
  %32 = icmp eq i64 %2, %31
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %32, label %dec_label_pc_37eb8, label %dec_label_pc_37eb3

dec_label_pc_37eb3:                               ; preds = %dec_label_pc_37ea3
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_37eb8

dec_label_pc_37eb8:                               ; preds = %dec_label_pc_37eb3, %dec_label_pc_37ea3
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_42e9b:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_531bc, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_4336e:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

