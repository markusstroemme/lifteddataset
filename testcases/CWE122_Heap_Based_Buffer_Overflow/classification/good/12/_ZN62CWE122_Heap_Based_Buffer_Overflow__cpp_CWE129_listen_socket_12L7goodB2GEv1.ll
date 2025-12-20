@global_var_ae608 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_5239f:
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv29.reg2mem = alloca i64, align 8
  %indvars.iv32.reg2mem = alloca i64, align 8
  %indvars.iv35.reg2mem = alloca i64, align 8
  %rsi.2.reg2mem = alloca i64, align 8
  %stack_var_-108.2.reg2mem = alloca i32, align 4
  %stack_var_-108.1.ph.reg2mem = alloca i32, align 4
  %rsi.1.ph.ph.reg2mem = alloca i64, align 8
  %stack_var_-108.0.ph.reg2mem = alloca i32, align 4
  %rsi.0.ph.ph.reg2mem = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i32 @globalReturnsTrueOrFalse()
  %3 = icmp eq i32 %2, 0
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  %6 = call i32 @socket(i32 2, i32 1, i32 6)
  %7 = icmp eq i32 %6, -1
  br i1 %5, label %dec_label_pc_524fe, label %dec_label_pc_523d3

dec_label_pc_523d3:                               ; preds = %dec_label_pc_5239f
  store i32 -1, ptr %stack_var_-108.2.reg2mem, align 4
  store i64 1, ptr %rsi.2.reg2mem, align 8
  br i1 %7, label %dec_label_pc_52620, label %dec_label_pc_52402

dec_label_pc_52402:                               ; preds = %dec_label_pc_523d3
  %8 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %9 = call i16 @htons(i16 27015)
  %10 = ptrtoint ptr %stack_var_-56 to i64
  %11 = bitcast ptr %stack_var_-56 to ptr
  %12 = call i32 @bind(i32 %6, ptr nonnull %11, i32 16)
  %13 = icmp eq i32 %12, -1
  %14 = icmp eq i1 %13, false
  %15 = icmp eq i1 %14, false
  store i64 %10, ptr %rsi.0.ph.ph.reg2mem, align 8
  br i1 %15, label %dec_label_pc_524e5.thread17, label %dec_label_pc_52453

dec_label_pc_52453:                               ; preds = %dec_label_pc_52402
  %16 = call i32 @listen(i32 %6, i32 5)
  %17 = icmp eq i32 %16, -1
  %18 = icmp eq i1 %17, false
  %19 = icmp eq i1 %18, false
  store i64 5, ptr %rsi.0.ph.ph.reg2mem, align 8
  br i1 %19, label %dec_label_pc_524e5.thread17, label %dec_label_pc_5246c

dec_label_pc_5246c:                               ; preds = %dec_label_pc_52453
  %20 = call i32 @accept(i32 %6, ptr null, ptr null)
  %21 = icmp eq i32 %20, -1
  store i64 0, ptr %rsi.0.ph.ph.reg2mem, align 8
  br i1 %21, label %dec_label_pc_524e5.thread17, label %dec_label_pc_52489

dec_label_pc_52489:                               ; preds = %dec_label_pc_5246c
  %22 = call i32 @recv(i32 %20, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %23 = add i32 %22, 1
  %24 = icmp ult i32 %23, 2
  store i32 -1, ptr %stack_var_-108.0.ph.reg2mem, align 4
  br i1 %24, label %dec_label_pc_524ef, label %dec_label_pc_524b0

dec_label_pc_524b0:                               ; preds = %dec_label_pc_52489
  %25 = sext i32 %22 to i64
  %26 = add i64 %0, -22
  %27 = add i64 %26, %25
  %28 = inttoptr i64 %27 to ptr
  store i8 0, ptr %28, align 1
  %29 = bitcast ptr %stack_var_-30 to ptr
  %30 = call i32 @atoi(ptr nonnull %29)
  store i32 %30, ptr %stack_var_-108.0.ph.reg2mem, align 4
  br label %dec_label_pc_524ef

dec_label_pc_524e5.thread17:                      ; preds = %dec_label_pc_5246c, %dec_label_pc_52453, %dec_label_pc_52402
  %rsi.0.ph.ph.reload = load i64, ptr %rsi.0.ph.ph.reg2mem, align 8
  %31 = call i32 @close(i32 %6)
  store i32 -1, ptr %stack_var_-108.2.reg2mem, align 4
  store i64 %rsi.0.ph.ph.reload, ptr %rsi.2.reg2mem, align 8
  br label %dec_label_pc_52620

dec_label_pc_524ef:                               ; preds = %dec_label_pc_524b0, %dec_label_pc_52489
  %32 = ptrtoint ptr %stack_var_-30 to i64
  %stack_var_-108.0.ph.reload = load i32, ptr %stack_var_-108.0.ph.reg2mem, align 4
  %33 = call i32 @close(i32 %6)
  %34 = call i32 @close(i32 %20)
  store i32 %stack_var_-108.0.ph.reload, ptr %stack_var_-108.2.reg2mem, align 4
  store i64 %32, ptr %rsi.2.reg2mem, align 8
  br label %dec_label_pc_52620

dec_label_pc_524fe:                               ; preds = %dec_label_pc_5239f
  store i32 -1, ptr %stack_var_-108.2.reg2mem, align 4
  store i64 1, ptr %rsi.2.reg2mem, align 8
  br i1 %7, label %dec_label_pc_52620, label %dec_label_pc_5252d

dec_label_pc_5252d:                               ; preds = %dec_label_pc_524fe
  %35 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %36 = call i16 @htons(i16 27015)
  %37 = ptrtoint ptr %stack_var_-56 to i64
  %38 = bitcast ptr %stack_var_-56 to ptr
  %39 = call i32 @bind(i32 %6, ptr nonnull %38, i32 16)
  %40 = icmp eq i32 %39, -1
  %41 = icmp eq i1 %40, false
  %42 = icmp eq i1 %41, false
  store i64 %37, ptr %rsi.1.ph.ph.reg2mem, align 8
  br i1 %42, label %dec_label_pc_52610.thread24, label %dec_label_pc_5257e

dec_label_pc_5257e:                               ; preds = %dec_label_pc_5252d
  %43 = call i32 @listen(i32 %6, i32 5)
  %44 = icmp eq i32 %43, -1
  %45 = icmp eq i1 %44, false
  %46 = icmp eq i1 %45, false
  store i64 5, ptr %rsi.1.ph.ph.reg2mem, align 8
  br i1 %46, label %dec_label_pc_52610.thread24, label %dec_label_pc_52597

dec_label_pc_52597:                               ; preds = %dec_label_pc_5257e
  %47 = call i32 @accept(i32 %6, ptr null, ptr null)
  %48 = icmp eq i32 %47, -1
  store i64 0, ptr %rsi.1.ph.ph.reg2mem, align 8
  br i1 %48, label %dec_label_pc_52610.thread24, label %dec_label_pc_525b4

dec_label_pc_525b4:                               ; preds = %dec_label_pc_52597
  %49 = call i32 @recv(i32 %47, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %50 = add i32 %49, 1
  %51 = icmp ult i32 %50, 2
  store i32 -1, ptr %stack_var_-108.1.ph.reg2mem, align 4
  br i1 %51, label %dec_label_pc_52616, label %dec_label_pc_525db

dec_label_pc_525db:                               ; preds = %dec_label_pc_525b4
  %52 = sext i32 %49 to i64
  %53 = add i64 %0, -22
  %54 = add i64 %53, %52
  %55 = inttoptr i64 %54 to ptr
  store i8 0, ptr %55, align 1
  %56 = bitcast ptr %stack_var_-30 to ptr
  %57 = call i32 @atoi(ptr nonnull %56)
  store i32 %57, ptr %stack_var_-108.1.ph.reg2mem, align 4
  br label %dec_label_pc_52616

dec_label_pc_52610.thread24:                      ; preds = %dec_label_pc_52597, %dec_label_pc_5257e, %dec_label_pc_5252d
  %rsi.1.ph.ph.reload = load i64, ptr %rsi.1.ph.ph.reg2mem, align 8
  %58 = call i32 @close(i32 %6)
  store i32 -1, ptr %stack_var_-108.2.reg2mem, align 4
  store i64 %rsi.1.ph.ph.reload, ptr %rsi.2.reg2mem, align 8
  br label %dec_label_pc_52620

dec_label_pc_52616:                               ; preds = %dec_label_pc_525db, %dec_label_pc_525b4
  %59 = ptrtoint ptr %stack_var_-30 to i64
  %stack_var_-108.1.ph.reload = load i32, ptr %stack_var_-108.1.ph.reg2mem, align 4
  %60 = call i32 @close(i32 %6)
  %61 = call i32 @close(i32 %47)
  store i32 %stack_var_-108.1.ph.reload, ptr %stack_var_-108.2.reg2mem, align 4
  store i64 %59, ptr %rsi.2.reg2mem, align 8
  br label %dec_label_pc_52620

dec_label_pc_52620:                               ; preds = %dec_label_pc_524fe, %dec_label_pc_523d3, %dec_label_pc_52610.thread24, %dec_label_pc_524e5.thread17, %dec_label_pc_52616, %dec_label_pc_524ef
  %rsi.2.reload = load i64, ptr %rsi.2.reg2mem, align 8
  %stack_var_-108.2.reload = load i32, ptr %stack_var_-108.2.reg2mem, align 4
  %62 = call i32 @globalReturnsTrueOrFalse()
  %63 = icmp eq i32 %62, 0
  %64 = icmp eq i1 %63, false
  %65 = icmp eq i1 %64, false
  %66 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv35.reg2mem, align 8
  store i64 0, ptr %indvars.iv29.reg2mem, align 8
  br i1 %65, label %dec_label_pc_52707, label %dec_label_pc_52649

dec_label_pc_52649:                               ; preds = %dec_label_pc_52620, %dec_label_pc_52649
  %indvars.iv35.reload = load i64, ptr %indvars.iv35.reg2mem, align 8
  %67 = mul i64 %indvars.iv35.reload, 4
  %68 = add i64 %67, %66
  %69 = inttoptr i64 %68 to ptr
  store i32 0, ptr %69, align 4
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35.reload, 1
  %exitcond37 = icmp eq i64 %indvars.iv.next36, 10
  store i64 %indvars.iv.next36, ptr %indvars.iv35.reg2mem, align 8
  br i1 %exitcond37, label %dec_label_pc_5266d, label %dec_label_pc_52649

dec_label_pc_5266d:                               ; preds = %dec_label_pc_52649
  %70 = icmp ugt i32 %stack_var_-108.2.reload, 9
  br i1 %70, label %dec_label_pc_526c5, label %dec_label_pc_52679

dec_label_pc_52679:                               ; preds = %dec_label_pc_5266d
  %71 = sext i32 %stack_var_-108.2.reload to i64
  %72 = mul i64 %71, 4
  %73 = add i64 %66, %72
  %74 = inttoptr i64 %73 to ptr
  store i32 1, ptr %74, align 4
  store i64 0, ptr %indvars.iv32.reg2mem, align 8
  br label %dec_label_pc_5269c

dec_label_pc_5269c:                               ; preds = %dec_label_pc_5269c, %dec_label_pc_52679
  %indvars.iv32.reload = load i64, ptr %indvars.iv32.reg2mem, align 8
  %75 = mul i64 %indvars.iv32.reload, 4
  %76 = add i64 %75, %66
  %77 = inttoptr i64 %76 to ptr
  %78 = load i32, ptr %77, align 4
  call void @printIntLine(i32 %78)
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32.reload, 1
  %exitcond34 = icmp eq i64 %indvars.iv.next33, 10
  store i64 %indvars.iv.next33, ptr %indvars.iv32.reg2mem, align 8
  br i1 %exitcond34, label %dec_label_pc_526d4, label %dec_label_pc_5269c

dec_label_pc_526c5:                               ; preds = %dec_label_pc_5266d
  call void @printLine(ptr @global_var_ae608)
  br label %dec_label_pc_526d4

dec_label_pc_526d4:                               ; preds = %dec_label_pc_5269c, %dec_label_pc_526c5
  %79 = icmp eq i64 %66, 0
  br i1 %79, label %dec_label_pc_527a5, label %dec_label_pc_526df

dec_label_pc_526df:                               ; preds = %dec_label_pc_526d4
  %80 = inttoptr i64 %66 to ptr
  %81 = and i64 %rsi.2.reload, 4294967295
  %82 = inttoptr i64 %81 to ptr
  call void @_ZdaPv(ptr %80, ptr %82)
  br label %dec_label_pc_527a5

dec_label_pc_52707:                               ; preds = %dec_label_pc_52620, %dec_label_pc_52707
  %indvars.iv29.reload = load i64, ptr %indvars.iv29.reg2mem, align 8
  %83 = mul i64 %indvars.iv29.reload, 4
  %84 = add i64 %83, %66
  %85 = inttoptr i64 %84 to ptr
  store i32 0, ptr %85, align 4
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29.reload, 1
  %exitcond31 = icmp eq i64 %indvars.iv.next30, 10
  store i64 %indvars.iv.next30, ptr %indvars.iv29.reg2mem, align 8
  br i1 %exitcond31, label %dec_label_pc_5272b, label %dec_label_pc_52707

dec_label_pc_5272b:                               ; preds = %dec_label_pc_52707
  %86 = icmp ugt i32 %stack_var_-108.2.reload, 9
  br i1 %86, label %dec_label_pc_52783, label %dec_label_pc_52737

dec_label_pc_52737:                               ; preds = %dec_label_pc_5272b
  %87 = sext i32 %stack_var_-108.2.reload to i64
  %88 = mul i64 %87, 4
  %89 = add i64 %66, %88
  %90 = inttoptr i64 %89 to ptr
  store i32 1, ptr %90, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_5275a

dec_label_pc_5275a:                               ; preds = %dec_label_pc_5275a, %dec_label_pc_52737
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %91 = mul i64 %indvars.iv.reload, 4
  %92 = add i64 %91, %66
  %93 = inttoptr i64 %92 to ptr
  %94 = load i32, ptr %93, align 4
  call void @printIntLine(i32 %94)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_52792, label %dec_label_pc_5275a

dec_label_pc_52783:                               ; preds = %dec_label_pc_5272b
  call void @printLine(ptr @global_var_ae608)
  br label %dec_label_pc_52792

dec_label_pc_52792:                               ; preds = %dec_label_pc_5275a, %dec_label_pc_52783
  %95 = icmp eq i64 %66, 0
  br i1 %95, label %dec_label_pc_527a5, label %dec_label_pc_52799

dec_label_pc_52799:                               ; preds = %dec_label_pc_52792
  %96 = inttoptr i64 %66 to ptr
  %97 = and i64 %rsi.2.reload, 4294967295
  %98 = inttoptr i64 %97 to ptr
  call void @_ZdaPv(ptr %96, ptr %98)
  br label %dec_label_pc_527a5

dec_label_pc_527a5:                               ; preds = %dec_label_pc_52799, %dec_label_pc_52792, %dec_label_pc_526df, %dec_label_pc_526d4
  %99 = call i64 @__readfsqword(i64 40)
  %100 = icmp eq i64 %1, %99
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %100, label %dec_label_pc_527ba, label %dec_label_pc_527b5

dec_label_pc_527b5:                               ; preds = %dec_label_pc_527a5
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_527ba

dec_label_pc_527ba:                               ; preds = %dec_label_pc_527b5, %dec_label_pc_527a5
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_91bc4:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_91be7, label %dec_label_pc_91bdb

dec_label_pc_91bdb:                               ; preds = %dec_label_pc_91bc4
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_91be7

dec_label_pc_91be7:                               ; preds = %dec_label_pc_91bdb, %dec_label_pc_91bc4
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_91c1f:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_b1f38, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_920f2:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i64 @_Znam(i64) local_unnamed_addr

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

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

