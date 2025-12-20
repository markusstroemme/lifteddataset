@global_var_b58b8 = external constant [16 x i8]
@global_var_b58c8 = external constant [21 x i8]
@global_var_b58e0 = external constant [36 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef090 = external local_unnamed_addr global ptr
@global_var_ef0e0 = external local_unnamed_addr global i32

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_1bb59:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ef0e0, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_1bb92, label %dec_label_pc_1bb81

dec_label_pc_1bb81:                               ; preds = %dec_label_pc_1bb59
  call void @printLine(ptr @global_var_b58c8)
  br label %dec_label_pc_1bc09

dec_label_pc_1bb92:                               ; preds = %dec_label_pc_1bb59
  %3 = icmp ugt i32 %data, 9
  br i1 %3, label %dec_label_pc_1bbf8, label %dec_label_pc_1bbc6

dec_label_pc_1bbc6:                               ; preds = %dec_label_pc_1bb92
  %4 = ptrtoint ptr %stack_var_-8 to i64
  %5 = sext i32 %data to i64
  %6 = mul i64 %5, 4
  %7 = add i64 %4, -48
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i32 1, ptr %9, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_1bbdc

dec_label_pc_1bbdc:                               ; preds = %dec_label_pc_1bbdc, %dec_label_pc_1bbc6
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %10 = mul i64 %indvars.iv.reload, 4
  %11 = add i64 %10, %7
  %12 = inttoptr i64 %11 to ptr
  %13 = load i32, ptr %12, align 4
  call void @printIntLine(i32 %13)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1bc09, label %dec_label_pc_1bbdc

dec_label_pc_1bbf8:                               ; preds = %dec_label_pc_1bb92
  call void @printLine(ptr @global_var_b58e0)
  br label %dec_label_pc_1bc09

dec_label_pc_1bc09:                               ; preds = %dec_label_pc_1bbdc, %dec_label_pc_1bbf8, %dec_label_pc_1bb81
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_1bc1e, label %dec_label_pc_1bc19

dec_label_pc_1bc19:                               ; preds = %dec_label_pc_1bc09
  call void @__stack_chk_fail()
  br label %dec_label_pc_1bc1e

dec_label_pc_1bc1e:                               ; preds = %dec_label_pc_1bc19, %dec_label_pc_1bc09
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_1bc20:
  %stack_var_-36.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_ef090, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_1bc85, label %dec_label_pc_1bc74

dec_label_pc_1bc74:                               ; preds = %dec_label_pc_1bc20
  %5 = call i32 @atoi(ptr nonnull %2)
  store i32 %5, ptr %stack_var_-36.0.reg2mem, align 4
  br label %dec_label_pc_1bc94

dec_label_pc_1bc85:                               ; preds = %dec_label_pc_1bc20
  call void @printLine(ptr @global_var_b58b8)
  store i32 -1, ptr %stack_var_-36.0.reg2mem, align 4
  br label %dec_label_pc_1bc94

dec_label_pc_1bc94:                               ; preds = %dec_label_pc_1bc85, %dec_label_pc_1bc74
  %stack_var_-36.0.reload = load i32, ptr %stack_var_-36.0.reg2mem, align 4
  store i32 0, ptr @global_var_ef0e0, align 4
  call void @anon0(i32 %stack_var_-36.0.reload)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_1bcbd, label %dec_label_pc_1bcb8

dec_label_pc_1bcb8:                               ; preds = %dec_label_pc_1bc94
  call void @__stack_chk_fail()
  br label %dec_label_pc_1bcbd

dec_label_pc_1bcbd:                               ; preds = %dec_label_pc_1bcb8, %dec_label_pc_1bc94
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

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

