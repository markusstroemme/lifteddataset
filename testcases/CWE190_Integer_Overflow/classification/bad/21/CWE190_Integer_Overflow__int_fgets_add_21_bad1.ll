@badStatic = external local_unnamed_addr global i32
@global_var_904b8 = external constant [16 x i8]
@global_var_9543c = external constant [4 x i8]
@global_var_c3080 = external local_unnamed_addr global ptr

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_50fe4:
  %0 = load i32, ptr @badStatic, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_51010, label %dec_label_pc_50ffd

dec_label_pc_50ffd:                               ; preds = %dec_label_pc_50fe4
  %2 = add i32 %data, 1
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_51010

dec_label_pc_51010:                               ; preds = %dec_label_pc_50ffd, %dec_label_pc_50fe4
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_51013:
  %stack_var_-36.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_c3080, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_51078, label %dec_label_pc_51067

dec_label_pc_51067:                               ; preds = %dec_label_pc_51013
  %5 = call i32 @atoi(ptr nonnull %2)
  store i32 %5, ptr %stack_var_-36.0.reg2mem, align 4
  br label %dec_label_pc_51087

dec_label_pc_51078:                               ; preds = %dec_label_pc_51013
  call void @printLine(ptr @global_var_904b8)
  store i32 0, ptr %stack_var_-36.0.reg2mem, align 4
  br label %dec_label_pc_51087

dec_label_pc_51087:                               ; preds = %dec_label_pc_51078, %dec_label_pc_51067
  %stack_var_-36.0.reload = load i32, ptr %stack_var_-36.0.reg2mem, align 4
  store i32 1, ptr @badStatic, align 4
  call void @anon1(i32 %stack_var_-36.0.reload)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_510b0, label %dec_label_pc_510ab

dec_label_pc_510ab:                               ; preds = %dec_label_pc_51087
  call void @__stack_chk_fail()
  br label %dec_label_pc_510b0

dec_label_pc_510b0:                               ; preds = %dec_label_pc_510ab, %dec_label_pc_51087
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_7758b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_775ae, label %dec_label_pc_775a2

dec_label_pc_775a2:                               ; preds = %dec_label_pc_7758b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_775ae

dec_label_pc_775ae:                               ; preds = %dec_label_pc_775a2, %dec_label_pc_7758b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_775e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_9543c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

