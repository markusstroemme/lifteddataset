@global_var_48370 = external constant [21 x i8]
@global_var_5e0d8 = external local_unnamed_addr global i32

define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_165b7:
  %0 = load i32, ptr @global_var_5e0d8, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_165e2, label %dec_label_pc_165d1

dec_label_pc_165d1:                               ; preds = %dec_label_pc_165b7
  call void @printLine(ptr @global_var_48370)
  br label %dec_label_pc_16603

dec_label_pc_165e2:                               ; preds = %dec_label_pc_165b7
  %2 = bitcast ptr %data to ptr
  %3 = call ptr @memset(ptr %2, i32 65, i32 49)
  %4 = ptrtoint ptr %data to i64
  %5 = add i64 %4, 49
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  br label %dec_label_pc_16603

dec_label_pc_16603:                               ; preds = %dec_label_pc_165e2, %dec_label_pc_165d1
  ret ptr %data
}

define void @anon1() local_unnamed_addr {
dec_label_pc_16609:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 100)
  %2 = icmp eq ptr %1, null
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_16643, label %dec_label_pc_16639

dec_label_pc_16639:                               ; preds = %dec_label_pc_16609
  call void @exit(i32 -1)
  unreachable

dec_label_pc_16643:                               ; preds = %dec_label_pc_16609
  %4 = bitcast ptr %1 to ptr
  store i32 0, ptr @global_var_5e0d8, align 4
  %5 = call ptr @anon0(ptr %4)
  store i64 0, ptr %stack_var_-72, align 8
  %6 = call i32 @strlen(ptr %5)
  %7 = bitcast ptr %5 to ptr
  %8 = call ptr @memmove(ptr nonnull %stack_var_-72, ptr %7, i32 %6)
  call void @printLine(ptr %5)
  call void @free(ptr %7)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_166e6, label %dec_label_pc_166e1

dec_label_pc_166e1:                               ; preds = %dec_label_pc_16643
  call void @__stack_chk_fail()
  br label %dec_label_pc_166e6

dec_label_pc_166e6:                               ; preds = %dec_label_pc_166e1, %dec_label_pc_16643
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

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

