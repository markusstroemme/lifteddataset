@staticFalse = external local_unnamed_addr global i32
@global_var_11e21 = external constant [21 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_3874:
  %stack_var_-184 = alloca i64, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @staticFalse, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_38b8, label %dec_label_pc_38a7

dec_label_pc_38a7:                                ; preds = %dec_label_pc_3874
  call void @printLine(ptr @global_var_11e21)
  br label %dec_label_pc_38df

dec_label_pc_38b8:                                ; preds = %dec_label_pc_3874
  %3 = call ptr @memset(ptr nonnull %stack_var_-120, i32 65, i32 49)
  %4 = ptrtoint ptr %stack_var_-120 to i64
  %5 = add i64 %4, 49
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  br label %dec_label_pc_38df

dec_label_pc_38df:                                ; preds = %dec_label_pc_38b8, %dec_label_pc_38a7
  %7 = bitcast ptr %stack_var_-120 to ptr
  store i64 0, ptr %stack_var_-184, align 8
  %8 = bitcast ptr %stack_var_-184 to ptr
  %9 = call ptr @strcpy(ptr nonnull %8, ptr nonnull %7)
  call void @printLine(ptr nonnull %7)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_3964, label %dec_label_pc_395f

dec_label_pc_395f:                                ; preds = %dec_label_pc_38df
  call void @__stack_chk_fail()
  br label %dec_label_pc_3964

dec_label_pc_3964:                                ; preds = %dec_label_pc_395f, %dec_label_pc_38df
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_f209:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_f22c, label %dec_label_pc_f220

dec_label_pc_f220:                                ; preds = %dec_label_pc_f209
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_f22c

dec_label_pc_f22c:                                ; preds = %dec_label_pc_f220, %dec_label_pc_f209
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

