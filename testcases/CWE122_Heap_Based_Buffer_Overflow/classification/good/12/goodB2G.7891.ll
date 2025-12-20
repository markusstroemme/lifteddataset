@global_var_b7be0 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_6987 = external constant i16

define void @anon0() local_unnamed_addr {
dec_label_pc_4b694:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv25.reg2mem = alloca i64, align 8
  %indvars.iv28.reg2mem = alloca i64, align 8
  %indvars.iv31.reg2mem = alloca i64, align 8
  %stack_var_-108.2.reg2mem = alloca i32, align 4
  %stack_var_-108.1.ph.reg2mem = alloca i32, align 4
  %stack_var_-108.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i32 @globalReturnsTrueOrFalse()
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @socket(i32 2, i32 1, i32 6)
  %5 = icmp eq i32 %4, -1
  br i1 %3, label %dec_label_pc_4b7e9, label %dec_label_pc_4b6c8

dec_label_pc_4b6c8:                               ; preds = %dec_label_pc_4b694
  store i32 -1, ptr %stack_var_-108.2.reg2mem, align 4
  br i1 %5, label %dec_label_pc_4b901, label %dec_label_pc_4b6f7

dec_label_pc_4b6f7:                               ; preds = %dec_label_pc_4b6c8
  %6 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %7 = call i16 @htons(i16 ptrtoint (ptr @global_var_6987 to i16))
  %8 = bitcast ptr %stack_var_-56 to ptr
  %9 = call i32 @bind(i32 %4, ptr nonnull %8, i32 16)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %dec_label_pc_4b7d0.thread15, label %dec_label_pc_4b743

dec_label_pc_4b743:                               ; preds = %dec_label_pc_4b6f7
  %11 = call i32 @listen(i32 %4, i32 5)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %dec_label_pc_4b7d0.thread15, label %dec_label_pc_4b757

dec_label_pc_4b757:                               ; preds = %dec_label_pc_4b743
  %13 = call i32 @accept(i32 %4, ptr null, ptr null)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %dec_label_pc_4b7d0.thread15, label %dec_label_pc_4b774

dec_label_pc_4b774:                               ; preds = %dec_label_pc_4b757
  %15 = call i32 @recv(i32 %13, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %16 = add i32 %15, 1
  %17 = icmp ult i32 %16, 2
  store i32 -1, ptr %stack_var_-108.0.ph.reg2mem, align 4
  br i1 %17, label %dec_label_pc_4b7da, label %dec_label_pc_4b79b

dec_label_pc_4b79b:                               ; preds = %dec_label_pc_4b774
  %18 = sext i32 %15 to i64
  %19 = add i64 %0, -22
  %20 = add i64 %19, %18
  %21 = inttoptr i64 %20 to ptr
  store i8 0, ptr %21, align 1
  %22 = bitcast ptr %stack_var_-30 to ptr
  %23 = call i32 @atoi(ptr nonnull %22)
  store i32 %23, ptr %stack_var_-108.0.ph.reg2mem, align 4
  br label %dec_label_pc_4b7da

dec_label_pc_4b7d0.thread15:                      ; preds = %dec_label_pc_4b757, %dec_label_pc_4b743, %dec_label_pc_4b6f7
  %24 = call i32 @close(i32 %4)
  store i32 -1, ptr %stack_var_-108.2.reg2mem, align 4
  br label %dec_label_pc_4b901

dec_label_pc_4b7da:                               ; preds = %dec_label_pc_4b79b, %dec_label_pc_4b774
  %stack_var_-108.0.ph.reload = load i32, ptr %stack_var_-108.0.ph.reg2mem, align 4
  %25 = call i32 @close(i32 %4)
  %26 = call i32 @close(i32 %13)
  store i32 %stack_var_-108.0.ph.reload, ptr %stack_var_-108.2.reg2mem, align 4
  br label %dec_label_pc_4b901

dec_label_pc_4b7e9:                               ; preds = %dec_label_pc_4b694
  store i32 -1, ptr %stack_var_-108.2.reg2mem, align 4
  br i1 %5, label %dec_label_pc_4b901, label %dec_label_pc_4b818

dec_label_pc_4b818:                               ; preds = %dec_label_pc_4b7e9
  %27 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %28 = call i16 @htons(i16 ptrtoint (ptr @global_var_6987 to i16))
  %29 = bitcast ptr %stack_var_-56 to ptr
  %30 = call i32 @bind(i32 %4, ptr nonnull %29, i32 16)
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %dec_label_pc_4b8f1.thread20, label %dec_label_pc_4b864

dec_label_pc_4b864:                               ; preds = %dec_label_pc_4b818
  %32 = call i32 @listen(i32 %4, i32 5)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %dec_label_pc_4b8f1.thread20, label %dec_label_pc_4b878

dec_label_pc_4b878:                               ; preds = %dec_label_pc_4b864
  %34 = call i32 @accept(i32 %4, ptr null, ptr null)
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %dec_label_pc_4b8f1.thread20, label %dec_label_pc_4b895

dec_label_pc_4b895:                               ; preds = %dec_label_pc_4b878
  %36 = call i32 @recv(i32 %34, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %37 = add i32 %36, 1
  %38 = icmp ult i32 %37, 2
  store i32 -1, ptr %stack_var_-108.1.ph.reg2mem, align 4
  br i1 %38, label %dec_label_pc_4b8f7, label %dec_label_pc_4b8bc

dec_label_pc_4b8bc:                               ; preds = %dec_label_pc_4b895
  %39 = sext i32 %36 to i64
  %40 = add i64 %0, -22
  %41 = add i64 %40, %39
  %42 = inttoptr i64 %41 to ptr
  store i8 0, ptr %42, align 1
  %43 = bitcast ptr %stack_var_-30 to ptr
  %44 = call i32 @atoi(ptr nonnull %43)
  store i32 %44, ptr %stack_var_-108.1.ph.reg2mem, align 4
  br label %dec_label_pc_4b8f7

dec_label_pc_4b8f1.thread20:                      ; preds = %dec_label_pc_4b878, %dec_label_pc_4b864, %dec_label_pc_4b818
  %45 = call i32 @close(i32 %4)
  store i32 -1, ptr %stack_var_-108.2.reg2mem, align 4
  br label %dec_label_pc_4b901

dec_label_pc_4b8f7:                               ; preds = %dec_label_pc_4b8bc, %dec_label_pc_4b895
  %stack_var_-108.1.ph.reload = load i32, ptr %stack_var_-108.1.ph.reg2mem, align 4
  %46 = call i32 @close(i32 %4)
  %47 = call i32 @close(i32 %34)
  store i32 %stack_var_-108.1.ph.reload, ptr %stack_var_-108.2.reg2mem, align 4
  br label %dec_label_pc_4b901

dec_label_pc_4b901:                               ; preds = %dec_label_pc_4b7e9, %dec_label_pc_4b6c8, %dec_label_pc_4b8f1.thread20, %dec_label_pc_4b7d0.thread15, %dec_label_pc_4b8f7, %dec_label_pc_4b7da
  %stack_var_-108.2.reload = load i32, ptr %stack_var_-108.2.reg2mem, align 4
  %48 = call i32 @globalReturnsTrueOrFalse()
  %49 = icmp eq i32 %48, 0
  %50 = call ptr @malloc(i32 40)
  %51 = ptrtoint ptr %50 to i64
  %52 = icmp eq ptr %50, null
  %53 = icmp eq i1 %52, false
  br i1 %49, label %dec_label_pc_4b9d7, label %dec_label_pc_4b913

dec_label_pc_4b913:                               ; preds = %dec_label_pc_4b901
  store i64 0, ptr %indvars.iv31.reg2mem, align 8
  br i1 %53, label %dec_label_pc_4b93b, label %dec_label_pc_4b928

dec_label_pc_4b928:                               ; preds = %dec_label_pc_4b913
  call void @exit(i32 -1)
  unreachable

dec_label_pc_4b93b:                               ; preds = %dec_label_pc_4b913, %dec_label_pc_4b93b
  %indvars.iv31.reload = load i64, ptr %indvars.iv31.reg2mem, align 8
  %54 = mul i64 %indvars.iv31.reload, 4
  %55 = add i64 %54, %51
  %56 = inttoptr i64 %55 to ptr
  store i32 0, ptr %56, align 4
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31.reload, 1
  %exitcond33 = icmp eq i64 %indvars.iv.next32, 10
  store i64 %indvars.iv.next32, ptr %indvars.iv31.reg2mem, align 8
  br i1 %exitcond33, label %dec_label_pc_4b95f, label %dec_label_pc_4b93b

dec_label_pc_4b95f:                               ; preds = %dec_label_pc_4b93b
  %57 = icmp ugt i32 %stack_var_-108.2.reload, 9
  br i1 %57, label %dec_label_pc_4b9b7, label %dec_label_pc_4b96b

dec_label_pc_4b96b:                               ; preds = %dec_label_pc_4b95f
  %58 = sext i32 %stack_var_-108.2.reload to i64
  %59 = mul i64 %58, 4
  %60 = add i64 %59, %51
  %61 = inttoptr i64 %60 to ptr
  store i32 1, ptr %61, align 4
  store i64 0, ptr %indvars.iv28.reg2mem, align 8
  br label %dec_label_pc_4b98e

dec_label_pc_4b98e:                               ; preds = %dec_label_pc_4b98e, %dec_label_pc_4b96b
  %indvars.iv28.reload = load i64, ptr %indvars.iv28.reg2mem, align 8
  %62 = mul i64 %indvars.iv28.reload, 4
  %63 = add i64 %62, %51
  %64 = inttoptr i64 %63 to ptr
  %65 = load i32, ptr %64, align 4
  call void @printIntLine(i32 %65)
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28.reload, 1
  %exitcond30 = icmp eq i64 %indvars.iv.next29, 10
  store i64 %indvars.iv.next29, ptr %indvars.iv28.reg2mem, align 8
  br i1 %exitcond30, label %dec_label_pc_4b9c6, label %dec_label_pc_4b98e

dec_label_pc_4b9b7:                               ; preds = %dec_label_pc_4b95f
  call void @printLine(ptr @global_var_b7be0)
  br label %dec_label_pc_4b9c6

dec_label_pc_4b9c6:                               ; preds = %dec_label_pc_4b98e, %dec_label_pc_4b9b7
  call void @free(ptr %50)
  br label %dec_label_pc_4ba96

dec_label_pc_4b9d7:                               ; preds = %dec_label_pc_4b901
  store i64 0, ptr %indvars.iv25.reg2mem, align 8
  br i1 %53, label %dec_label_pc_4b9ff, label %dec_label_pc_4b9ec

dec_label_pc_4b9ec:                               ; preds = %dec_label_pc_4b9d7
  call void @exit(i32 -1)
  unreachable

dec_label_pc_4b9ff:                               ; preds = %dec_label_pc_4b9d7, %dec_label_pc_4b9ff
  %indvars.iv25.reload = load i64, ptr %indvars.iv25.reg2mem, align 8
  %66 = mul i64 %indvars.iv25.reload, 4
  %67 = add i64 %66, %51
  %68 = inttoptr i64 %67 to ptr
  store i32 0, ptr %68, align 4
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25.reload, 1
  %exitcond27 = icmp eq i64 %indvars.iv.next26, 10
  store i64 %indvars.iv.next26, ptr %indvars.iv25.reg2mem, align 8
  br i1 %exitcond27, label %dec_label_pc_4ba23, label %dec_label_pc_4b9ff

dec_label_pc_4ba23:                               ; preds = %dec_label_pc_4b9ff
  %69 = icmp ugt i32 %stack_var_-108.2.reload, 9
  br i1 %69, label %dec_label_pc_4ba7b, label %dec_label_pc_4ba2f

dec_label_pc_4ba2f:                               ; preds = %dec_label_pc_4ba23
  %70 = sext i32 %stack_var_-108.2.reload to i64
  %71 = mul i64 %70, 4
  %72 = add i64 %71, %51
  %73 = inttoptr i64 %72 to ptr
  store i32 1, ptr %73, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_4ba52

dec_label_pc_4ba52:                               ; preds = %dec_label_pc_4ba52, %dec_label_pc_4ba2f
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %74 = mul i64 %indvars.iv.reload, 4
  %75 = add i64 %74, %51
  %76 = inttoptr i64 %75 to ptr
  %77 = load i32, ptr %76, align 4
  call void @printIntLine(i32 %77)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_4ba8a, label %dec_label_pc_4ba52

dec_label_pc_4ba7b:                               ; preds = %dec_label_pc_4ba23
  call void @printLine(ptr @global_var_b7be0)
  br label %dec_label_pc_4ba8a

dec_label_pc_4ba8a:                               ; preds = %dec_label_pc_4ba52, %dec_label_pc_4ba7b
  call void @free(ptr %50)
  br label %dec_label_pc_4ba96

dec_label_pc_4ba96:                               ; preds = %dec_label_pc_4ba8a, %dec_label_pc_4b9c6
  %78 = call i64 @__readfsqword(i64 40)
  %79 = icmp eq i64 %1, %78
  br i1 %79, label %dec_label_pc_4baab, label %dec_label_pc_4baa6

dec_label_pc_4baa6:                               ; preds = %dec_label_pc_4ba96
  call void @__stack_chk_fail()
  br label %dec_label_pc_4baab

dec_label_pc_4baab:                               ; preds = %dec_label_pc_4baa6, %dec_label_pc_4ba96
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_a03ba:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i16 @htons(i16) local_unnamed_addr

declare i32 @bind(i32, ptr, i32) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @accept(i32, ptr, ptr) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @listen(i32, i32) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

