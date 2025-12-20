@global_var_78064 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_30107:
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-64.0.reg2mem = alloca ptr, align 8
  %stack_var_-27 = alloca i64, align 8
  %stack_var_-38 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_78064, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_3013c, label %dec_label_pc_3012d

dec_label_pc_3012d:                               ; preds = %dec_label_pc_30107
  %4 = bitcast ptr %stack_var_-38 to ptr
  store i8 0, ptr %4, align 8
  store ptr %4, ptr %stack_var_-64.0.reg2mem, align 8
  br label %dec_label_pc_3013c

dec_label_pc_3013c:                               ; preds = %dec_label_pc_3012d, %dec_label_pc_30107
  %stack_var_-64.0.reload = load ptr, ptr %stack_var_-64.0.reg2mem, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %5 = bitcast ptr %stack_var_-27 to ptr
  %6 = call i32 @strlen(ptr nonnull %5)
  %7 = sext i32 %6 to i64
  %8 = add nsw i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %dec_label_pc_3019c, label %dec_label_pc_3016e.lr.ph

dec_label_pc_3016e.lr.ph:                         ; preds = %dec_label_pc_3013c
  %10 = ptrtoint ptr %stack_var_-64.0.reload to i64
  %11 = ptrtoint ptr %stack_var_-27 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_3016e

dec_label_pc_3016e:                               ; preds = %dec_label_pc_3016e, %dec_label_pc_3016e.lr.ph
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %12 = add i64 %storemerge2.reload, %10
  %13 = add i64 %storemerge2.reload, %11
  %14 = inttoptr i64 %13 to ptr
  %15 = load i8, ptr %14, align 1
  %16 = inttoptr i64 %12 to ptr
  store i8 %15, ptr %16, align 1
  %17 = add nuw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %17, %8
  store i64 %17, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_3019c, label %dec_label_pc_3016e

dec_label_pc_3019c:                               ; preds = %dec_label_pc_3016e, %dec_label_pc_3013c
  call void @printLine(ptr %stack_var_-64.0.reload)
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %0, %18
  br i1 %19, label %dec_label_pc_301bd, label %dec_label_pc_301b8

dec_label_pc_301b8:                               ; preds = %dec_label_pc_3019c
  call void @__stack_chk_fail()
  br label %dec_label_pc_301bd

dec_label_pc_301bd:                               ; preds = %dec_label_pc_301b8, %dec_label_pc_3019c
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

