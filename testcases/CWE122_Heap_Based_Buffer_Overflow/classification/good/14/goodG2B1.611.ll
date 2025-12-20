@global_var_48143 = external constant [21 x i8]
@global_var_5e04c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_9064:
  %.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_909e, label %dec_label_pc_9094

dec_label_pc_9094:                                ; preds = %dec_label_pc_9064
  call void @exit(i32 -1)
  unreachable

dec_label_pc_909e:                                ; preds = %dec_label_pc_9064
  %4 = load i32, ptr @global_var_5e04c, align 4
  %5 = icmp eq i32 %4, 5
  br i1 %5, label %dec_label_pc_90ba, label %dec_label_pc_90a9

dec_label_pc_90a9:                                ; preds = %dec_label_pc_909e
  call void @printLine(ptr @global_var_48143)
  br label %dec_label_pc_90db

dec_label_pc_90ba:                                ; preds = %dec_label_pc_909e
  %6 = call ptr @memset(ptr %1, i32 65, i32 49)
  %7 = ptrtoint ptr %1 to i64
  %8 = add i64 %7, 49
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  br label %dec_label_pc_90db

dec_label_pc_90db:                                ; preds = %dec_label_pc_90ba, %dec_label_pc_90a9
  %10 = bitcast ptr %1 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %11 = call i32 @strlen(ptr %10)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %dec_label_pc_9155, label %dec_label_pc_912b.lr.ph

dec_label_pc_912b.lr.ph:                          ; preds = %dec_label_pc_90db
  %13 = sext i32 %11 to i64
  %14 = ptrtoint ptr %1 to i64
  %15 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %.reg2mem, align 8
  br label %dec_label_pc_912b

dec_label_pc_912b:                                ; preds = %dec_label_pc_912b.lr.ph, %dec_label_pc_912b
  %.reload = load i64, ptr %.reg2mem, align 8
  %16 = add i64 %.reload, %14
  %17 = inttoptr i64 %16 to ptr
  %18 = load i8, ptr %17, align 1
  %19 = add i64 %.reload, %15
  %20 = inttoptr i64 %19 to ptr
  store i8 %18, ptr %20, align 1
  %21 = add nuw i64 %.reload, 1
  %22 = icmp ult i64 %21, %13
  store i64 %21, ptr %.reg2mem, align 8
  br i1 %22, label %dec_label_pc_912b, label %dec_label_pc_9155

dec_label_pc_9155:                                ; preds = %dec_label_pc_912b, %dec_label_pc_90db
  call void @printLine(ptr %10)
  call void @free(ptr %1)
  %23 = call i64 @__readfsqword(i64 40)
  %24 = icmp eq i64 %0, %23
  br i1 %24, label %dec_label_pc_9186, label %dec_label_pc_9181

dec_label_pc_9181:                                ; preds = %dec_label_pc_9155
  call void @__stack_chk_fail()
  br label %dec_label_pc_9186

dec_label_pc_9186:                                ; preds = %dec_label_pc_9181, %dec_label_pc_9155
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3c6eb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3c70e, label %dec_label_pc_3c702

dec_label_pc_3c702:                               ; preds = %dec_label_pc_3c6eb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3c70e

dec_label_pc_3c70e:                               ; preds = %dec_label_pc_3c702, %dec_label_pc_3c6eb
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

