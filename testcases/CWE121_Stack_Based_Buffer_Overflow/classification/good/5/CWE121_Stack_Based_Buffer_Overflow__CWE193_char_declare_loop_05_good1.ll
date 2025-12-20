@global_var_5eed5 = external constant [21 x i8]
@global_var_78130 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_2ebac:
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-64.0.reg2mem = alloca ptr, align 8
  %stack_var_-27 = alloca i64, align 8
  %stack_var_-38 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_78130, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_2ebe2, label %dec_label_pc_2ebd1

dec_label_pc_2ebd1:                               ; preds = %dec_label_pc_2ebac
  call void @printLine(ptr @global_var_5eed5)
  br label %dec_label_pc_2ebf1

dec_label_pc_2ebe2:                               ; preds = %dec_label_pc_2ebac
  %3 = bitcast ptr %stack_var_-38 to ptr
  store i8 0, ptr %3, align 8
  store ptr %3, ptr %stack_var_-64.0.reg2mem, align 8
  br label %dec_label_pc_2ebf1

dec_label_pc_2ebf1:                               ; preds = %dec_label_pc_2ebe2, %dec_label_pc_2ebd1
  %stack_var_-64.0.reload = load ptr, ptr %stack_var_-64.0.reg2mem, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %4 = bitcast ptr %stack_var_-27 to ptr
  %5 = call i32 @strlen(ptr nonnull %4)
  %6 = sext i32 %5 to i64
  %7 = add nsw i64 %6, 1
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %dec_label_pc_2ec51, label %dec_label_pc_2ec23.lr.ph

dec_label_pc_2ec23.lr.ph:                         ; preds = %dec_label_pc_2ebf1
  %9 = ptrtoint ptr %stack_var_-64.0.reload to i64
  %10 = ptrtoint ptr %stack_var_-27 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_2ec23

dec_label_pc_2ec23:                               ; preds = %dec_label_pc_2ec23, %dec_label_pc_2ec23.lr.ph
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %11 = add i64 %storemerge2.reload, %9
  %12 = add i64 %storemerge2.reload, %10
  %13 = inttoptr i64 %12 to ptr
  %14 = load i8, ptr %13, align 1
  %15 = inttoptr i64 %11 to ptr
  store i8 %14, ptr %15, align 1
  %16 = add nuw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %16, %7
  store i64 %16, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2ec51, label %dec_label_pc_2ec23

dec_label_pc_2ec51:                               ; preds = %dec_label_pc_2ec23, %dec_label_pc_2ebf1
  call void @printLine(ptr %stack_var_-64.0.reload)
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %0, %17
  br i1 %18, label %dec_label_pc_2ec72, label %dec_label_pc_2ec6d

dec_label_pc_2ec6d:                               ; preds = %dec_label_pc_2ec51
  call void @__stack_chk_fail()
  br label %dec_label_pc_2ec72

dec_label_pc_2ec72:                               ; preds = %dec_label_pc_2ec6d, %dec_label_pc_2ec51
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_4ef73:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_4ef96, label %dec_label_pc_4ef8a

dec_label_pc_4ef8a:                               ; preds = %dec_label_pc_4ef73
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_4ef96

dec_label_pc_4ef96:                               ; preds = %dec_label_pc_4ef8a, %dec_label_pc_4ef73
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

